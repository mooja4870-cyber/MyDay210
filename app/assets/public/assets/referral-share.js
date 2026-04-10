/* MyDay 2.0 — Referral + Share Card System */
(function () {
  "use strict";

  /* ══════════════════════════════════════════
     Config & Constants
     ══════════════════════════════════════════ */
  const REFERRAL_KEY = "MYDAY210_REFERRAL_V1";
  const SETUP_KEY = "MYDAY210_SETUP_V1";
  const HISTORY_KEY = "MYDAY210_POST_HISTORY_V1";
  const RUNTIME_ID = "MyDay210";
  const RUNTIME_PACKAGE = "com.mooja.myday210";
  const HISTORY_LIMIT = 20;
  const CARD_W = 1080;
  const CARD_H = 1350;
  const WATERMARK_ALPHA = 0.3;
  let cachedSetup = null;

  /* ══════════════════════════════════════════
     Referral Code Management
     ══════════════════════════════════════════ */
  function loadReferral() {
    try { return JSON.parse(localStorage.getItem(REFERRAL_KEY)) || {}; }
    catch { return {}; }
  }
  function saveReferral(data) {
    localStorage.setItem(REFERRAL_KEY, JSON.stringify(data));
  }
  function getOrCreateCode() {
    let ref = loadReferral();
    if (ref.code) return ref;
    const chars = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
    let c = "MYDAY-";
    for (let i = 0; i < 4; i++) c += chars[Math.floor(Math.random() * chars.length)];
    ref = {
      code: c,
      createdAt: new Date().toISOString(),
      inviteCount: 0,
      rewardCredits: 0,
    };
    saveReferral(ref);
    return ref;
  }
  function getSecurePrefsPlugin() {
    try {
      const plugins = window.Capacitor && window.Capacitor.Plugins;
      return plugins && plugins.SecurePrefs ? plugins.SecurePrefs : null;
    } catch { return null; }
  }
  function parseSetup(raw) {
    try {
      const parsed = JSON.parse(raw || "{}");
      return parsed && typeof parsed === "object" ? parsed : {};
    } catch { return {}; }
  }
  function loadSetupSync() {
    const parsed = parseSetup(localStorage.getItem(SETUP_KEY));
    cachedSetup = parsed;
    return parsed;
  }
  async function loadSetup() {
    const plugin = getSecurePrefsPlugin();
    if (!plugin) return loadSetupSync();
    try {
      const result = await plugin.get({ key: SETUP_KEY });
      const raw = typeof (result && result.value) === "string" ? result.value : "";
      if (!raw) return loadSetupSync();
      localStorage.setItem(SETUP_KEY, raw);
      const parsed = parseSetup(raw);
      cachedSetup = parsed;
      return parsed;
    } catch {
      return loadSetupSync();
    }
  }
  function getSetupSnapshot() {
    return cachedSetup || loadSetupSync();
  }
  function getBlogId() {
    const s = getSetupSnapshot();
    return (s.naverBlogId || "").trim();
  }
  function loadHistory() {
    try {
      const raw = JSON.parse(localStorage.getItem(HISTORY_KEY)) || [];
      return Array.isArray(raw) ? raw : [];
    } catch { return []; }
  }
  function saveHistory(items) {
    localStorage.setItem(HISTORY_KEY, JSON.stringify(items));
  }
  function pushHistory(item) {
    const prev = loadHistory();
    const dedupeKey = `${item.title}|${item.blogUrl}|${item.createdAt}`;
    if (prev.some((x) => `${x.title}|${x.blogUrl}|${x.createdAt}` === dedupeKey)) return;
    const next = [item, ...prev].slice(0, HISTORY_LIMIT);
    saveHistory(next);
  }
  function escapeHtml(value) {
    return String(value || "").replace(/[&<>"']/g, (ch) => (
      ch === "&" ? "&amp;"
      : ch === "<" ? "&lt;"
      : ch === ">" ? "&gt;"
      : ch === '"' ? "&quot;"
      : "&#39;"
    ));
  }
  function formatDateTime(iso) {
    try {
      const d = new Date(iso);
      if (Number.isNaN(d.getTime())) return "";
      const y = d.getFullYear();
      const m = String(d.getMonth() + 1).padStart(2, "0");
      const day = String(d.getDate()).padStart(2, "0");
      const hh = String(d.getHours()).padStart(2, "0");
      const mm = String(d.getMinutes()).padStart(2, "0");
      return `${y}.${m}.${day} ${hh}:${mm}`;
    } catch { return ""; }
  }
  function findBlogUrlFromDom(blogId) {
    const anchors = document.querySelectorAll('a[href*="blog.naver.com"]');
    for (const a of anchors) {
      const href = (a.getAttribute("href") || "").trim();
      if (/^https?:\/\/blog\.naver\.com\/\S+/i.test(href)) return href;
    }
    const bodyText = document.body.innerText || "";
    const m = bodyText.match(/https?:\/\/blog\.naver\.com\/\S+/i);
    if (m && m[0]) return m[0].replace(/[),.;]+$/, "");
    return blogId ? `https://blog.naver.com/${blogId}` : "";
  }
  function findPostTitleFromDom() {
    const h1s = document.querySelectorAll("h1, h2, [class*='title']");
    for (const el of h1s) {
      const t = (el.textContent || "").trim();
      if (t.length > 4 && t.length < 80 && !t.includes("MyDay") && !t.includes("포스팅이 완료")) {
        return t;
      }
    }
    return "MyDay 포스팅";
  }

  /* ══════════════════════════════════════════
     RAG FAQ (Intent Dataset + Retriever)
     - 20 facts x 5 angles = 100 intents
     - each intent has 5 questions + 5 answers
     ══════════════════════════════════════════ */
  const RAG_FACTS = [
    { categoryId: "intro", categoryLabel: "앱 소개", factId: "what_is_app", ask: "이 앱은 뭐하는 앱", answer: "사진만 골라주면 AI가 감성 블로그 글을 뚝딱 써주고, 네이버 블로그에 바로 올려주는 앱이에요! 글쓰기는 귀찮은데 블로그는 하고 싶을 때 딱이죠 ✨", keywords: ["이앱", "뭐하는앱", "소개", "어떤앱", "무슨앱", "앱역할", "앱기능"] },
    { categoryId: "intro", categoryLabel: "앱 소개", factId: "how_to_use", ask: "앱 사용 방법", answer: "사진 고르고 → 장소 선택 → 이유 선택 → 인물 입력하면 끝! AI가 알아서 감성글을 만들어줘요. 4단계면 블로그 한 편 완성이에요 😊", keywords: ["사용법", "어떻게", "쓰는법", "사용방법", "이용", "시작"] },
    { categoryId: "onboarding", categoryLabel: "온보딩/계정", factId: "first_setup", ask: "초기 설정 입력 항목", answer: "앱이랑 처음 인사하는 시간이에요! 네이버 아이디, 비밀번호, 블로그 아이디, Gemini API 키만 넣어주면 준비 끝이에요 🎉", keywords: ["초기설정", "온보딩", "입력", "계정", "처음"] },
    { categoryId: "onboarding", categoryLabel: "온보딩/계정", factId: "reopen_onboarding", ask: "온보딩 다시 보기", answer: "설정 화면에서 '온보딩 다시 보기'를 누르면 처음 그 설정 화면으로 돌아갈 수 있어요. 마치 타임머신처럼요 ⏰", keywords: ["온보딩", "다시", "초기설정"] },
    { categoryId: "api", categoryLabel: "API 키", factId: "api_issue", ask: "Gemini API 키 발급", answer: "AI를 부르는 마법 주문 같은 거예요! Google AI Studio(aistudio.google.com)에서 무료로 받을 수 있어요. 'Create API key' 버튼 하나면 끝! 🔑", keywords: ["Gemini", "API", "키", "발급", "받는법", "어디서"] },
    { categoryId: "api", categoryLabel: "API 키", factId: "api_limit", ask: "Gemini API 사용량 제한", answer: "하루에 쓸 수 있는 양이 정해져 있어요. 초과하면 잠깐 쉬었다 다시 해보면 돼요. AI도 휴식이 필요하거든요 😅", keywords: ["사용량", "제한", "초과", "재시도"] },
    { categoryId: "photo", categoryLabel: "사진 업로드", factId: "photo_count", ask: "사진 업로드 개수 제한", answer: "1장부터 10장까지 골라주시면 돼요! 많이 넣을수록 AI가 더 풍성한 글을 써줘요 📸", keywords: ["사진", "이미지", "최소", "최대", "10장", "몇장"] },
    { categoryId: "photo", categoryLabel: "사진 업로드", factId: "photo_type", ask: "업로드 가능한 파일 형식", answer: "이미지 파일이면 다 OK예요! 사진 고른 다음에 '확인' 버튼 꼭 눌러주세요~ 안 누르면 다음으로 못 넘어가거든요 😉", keywords: ["이미지", "파일", "형식", "확인버튼"] },
    { categoryId: "place", categoryLabel: "장소 선택", factId: "place_multi", ask: "장소 복수 선택", answer: "카페도 갔다 공원도 갔다? 여러 개 골라도 돼요! AI가 그 분위기 다 살려서 글을 써줘요 🏖️", keywords: ["장소", "복수선택", "분위기", "여러개"] },
    { categoryId: "place", categoryLabel: "장소 선택", factId: "place_other", ask: "기타 장소 직접 입력", answer: "목록에 없는 특별한 장소? '기타 직접 입력'으로 마음껏 적어주세요! 세상 모든 장소가 다 가능해요 🌍", keywords: ["기타", "직접입력", "장소"] },
    { categoryId: "reason", categoryLabel: "이유 선택", factId: "reason_multi", ask: "이유 복수 선택", answer: "데이트하면서 카페 투어도 했다면 둘 다 선택! 이유도 여러 개 고를 수 있어요 💕", keywords: ["이유", "복수선택", "목적", "여러개"] },
    { categoryId: "reason", categoryLabel: "이유 선택", factId: "reason_effect", ask: "이유 선택이 글에 미치는 영향", answer: "선택한 이유에 따라 AI가 글의 분위기를 맞춰줘요. 데이트면 로맨틱하게, 운동이면 활기차게! 🎨", keywords: ["분위기", "표현", "AI", "반영"] },
    { categoryId: "person", categoryLabel: "인물 입력", factId: "person_optional", ask: "사진 속 인물 입력 필수 여부", answer: "사람 없는 풍경이나 음식 사진이면 비워도 전혀 문제없어요! 선택사항이거든요 😊", keywords: ["인물", "선택사항", "비워도", "필수"] },
    { categoryId: "person", categoryLabel: "인물 입력", factId: "person_example", ask: "인물 입력 예시", answer: "'친구와 나', '가족들', '남자친구'처럼 편하게 적어주면 돼요. AI가 글에 자연스럽게 녹여줘요 ✍️", keywords: ["예시", "친구", "가족", "자유입력"] },
    { categoryId: "ai", categoryLabel: "AI 글 생성", factId: "ai_auto", ask: "AI 글 자동 생성 시작 시점", answer: "4단계를 다 채우면 AI가 바로 글쓰기 시작해요! 사진, 장소, 이유, 인물까지 넣으면 자동으로 뚝딱 ✨", keywords: ["AI", "자동생성", "4단계", "시작"] },
    { categoryId: "ai", categoryLabel: "AI 글 생성", factId: "ai_regen_edit", ask: "글 재생성 및 본문 수정", answer: "'포스팅 글 새로 생성하기' 누르면 다른 스타일로 다시 써줘요! 마음에 들 때까지 몇 번이든 OK. 직접 수정도 가능해요 ✏️", keywords: ["재생성", "스타일", "본문수정", "다시"] },
    { categoryId: "posting", categoryLabel: "블로그 포스팅", factId: "post_run", ask: "네이버 블로그 자동 포스팅 실행", answer: "버튼 하나면 AI가 만든 글이랑 사진이 네이버 블로그로 슝~ 올라가요! 진짜 원클릭이에요 🚀", keywords: ["자동포스팅", "실행", "업로드", "올리기"] },
    { categoryId: "posting", categoryLabel: "블로그 포스팅", factId: "post_result", ask: "포스팅 성공/실패 대응", answer: "성공하면 축하 메시지가 뜨고, 혹시 실패해도 걱정 마세요! '다시 포스팅' 버튼으로 바로 재시도할 수 있어요 💪", keywords: ["성공", "실패", "재시도"] },
    { categoryId: "error", categoryLabel: "오류 대응", factId: "safe_policy", ask: "안전 정책 차단 메시지", answer: "가끔 AI가 민감한 표현에 깜짝 놀랄 때가 있어요. 표현을 살짝 바꿔서 다시 해보면 잘 될 거예요 😊", keywords: ["안전정책", "차단", "표현완화"] },
    { categoryId: "error", categoryLabel: "오류 대응", factId: "network_issue", ask: "네트워크 관련 오류", answer: "AI 글쓰기랑 포스팅은 인터넷이 필요해요! Wi-Fi나 데이터 연결 확인하고 다시 시도해보세요 📶", keywords: ["네트워크", "인터넷", "오류", "재시도", "와이파이"] },
    { categoryId: "settings", categoryLabel: "설정 관리", factId: "settings_manage", ask: "계정 및 API 설정 변경", answer: "설정 화면에서 '계정 및 API 관리'로 들어가면 네이버 계정이랑 API 키를 언제든 바꿀 수 있어요 ⚙️", keywords: ["설정", "계정", "API", "변경", "수정"] },
    { categoryId: "settings", categoryLabel: "설정 관리", factId: "settings_reset", ask: "초기 설정 다시 하기", answer: "처음부터 다시 하고 싶으면 '초기 설정 다시 하기'를 누르면 돼요. 깔끔하게 리셋! 🔄", keywords: ["초기설정", "리셋", "온보딩", "다시"] },
  ];

  const RAG_ANGLES = [
    {
      key: "guide",
      questionTemplates: [
        "{ASK} 알려주세요.",
        "{ASK} 방법이 궁금해요.",
        "{ASK} 어떻게 진행해요?",
        "{CATEGORY}에서 {ASK} 기준이 뭐예요?",
        "{ASK} 핵심만 짧게 알려주세요.",
      ],
      answerPhrases: ["쉽게 말하면요,", "알려드릴게요!", "이렇게 하시면 돼요~", "포인트만 짚어드리면요,", "간단해요!"],
    },
    {
      key: "condition",
      questionTemplates: [
        "{ASK} 조건이 있나요?",
        "{ASK} 제한이 있나요?",
        "{ASK} 필수 항목이 뭔가요?",
        "{ASK} 할 때 꼭 필요한 게 있어요?",
        "{ASK} 전제 조건 알려주세요.",
      ],
      answerPhrases: ["이것만 기억하세요!", "꼭 알아두실 점은요,", "중요한 건요,", "체크 포인트는요,", "참고로 알려드리면요,"],
    },
    {
      key: "retry",
      questionTemplates: [
        "{ASK} 안 되면 어떻게 해요?",
        "{ASK} 실패했을 때 재시도 방법은?",
        "{ASK} 오류가 나면 어떻게 복구해요?",
        "{ASK} 문제 생겼을 때 순서 알려주세요.",
        "{ASK} 막히면 어디부터 확인해요?",
      ],
      answerPhrases: ["걱정 마세요!", "당황하지 마세요~", "이럴 땐요,", "해결 방법 알려드릴게요!", "금방 고칠 수 있어요!"],
    },
    {
      key: "quick",
      questionTemplates: [
        "{ASK} 빠르게 알려줘요.",
        "{ASK} 한 줄로 설명해줘요.",
        "{ASK} 바로 실행할 수 있게 알려주세요.",
        "{ASK} 지금 당장 뭐 하면 돼요?",
        "{ASK} 초보 기준으로 알려주세요.",
      ],
      answerPhrases: ["한마디로요?", "초간단 정리!", "바로 알려드릴게요~", "딱 하나만 기억하세요!", "핵심만 콕!"],
    },
    {
      key: "confirm",
      questionTemplates: [
        "{ASK} 맞게 이해했는지 확인하고 싶어요.",
        "{ASK} 이 순서가 맞나요?",
        "{ASK} 체크 포인트가 뭐예요?",
        "{ASK} 놓치기 쉬운 부분이 있을까요?",
        "{ASK} 마지막 확인사항 알려주세요.",
      ],
      answerPhrases: ["다시 한번 정리하면요,", "놓치기 쉬운 건요,", "꼼꼼히 챙기면요,", "마지막으로 확인할 건요,", "정리해드릴게요!"],
    },
  ];

  function normalizeText(text) {
    return String(text || "")
      .toLowerCase()
      .replace(/[\u200b-\u200d\ufeff]/g, "")
      .replace(/[^0-9a-z가-힣\s]/g, " ")
      .replace(/\s+/g, " ")
      .trim();
  }
  function tokenizeText(text) {
    const norm = normalizeText(text);
    if (!norm) return [];
    return norm.split(" ").filter((t) => t.length > 0);
  }
  function makeBigrams(text) {
    const compact = normalizeText(text).replace(/\s+/g, "");
    const grams = new Set();
    for (let i = 0; i < compact.length - 1; i += 1) {
      grams.add(compact.slice(i, i + 2));
    }
    return grams;
  }
  function uniqueList(items) {
    return Array.from(new Set(items.filter(Boolean)));
  }
  function hashText(text) {
    let h = 0;
    for (let i = 0; i < text.length; i += 1) {
      h = ((h << 5) - h) + text.charCodeAt(i);
      h |= 0;
    }
    return Math.abs(h);
  }
  function buildRagFaqDataset() {
    const rows = [];
    for (const fact of RAG_FACTS) {
      for (const angle of RAG_ANGLES) {
        const questions = angle.questionTemplates.map((tpl) => (
          tpl
            .split("{ASK}").join(fact.ask)
            .split("{CATEGORY}").join(fact.categoryLabel)
        ));
        const answers = angle.answerPhrases.map((prefix) => `${prefix} ${fact.answer}`);
        rows.push({
          intent: `${fact.categoryId}_${fact.factId}_${angle.key}`,
          categoryId: fact.categoryId,
          categoryLabel: fact.categoryLabel,
          ask: fact.ask,
          keywords: uniqueList([...(fact.keywords || []), fact.categoryLabel, fact.ask, angle.key]),
          questions,
          answers,
        });
      }
    }
    return rows;
  }
  const RAG_FAQ_DATASET = buildRagFaqDataset();
  const RAG_SEARCH_INDEX = RAG_FAQ_DATASET.map((intent) => {
    const questionNorms = intent.questions.map((q) => normalizeText(q));
    const allNorm = normalizeText([intent.ask, ...intent.questions, ...intent.keywords].join(" "));
    const keywords = uniqueList(intent.keywords.map((k) => normalizeText(k)));
    return {
      intent,
      questionNorms,
      allNorm,
      keywordSet: new Set(keywords),
      bigrams: makeBigrams(allNorm),
    };
  });
  const RAG_META = {
    intentCount: RAG_FAQ_DATASET.length,
    questionCount: RAG_FAQ_DATASET.length * 5,
    answerCount: RAG_FAQ_DATASET.length * 5,
  };

  function isOutOfScopeQuery(query) {
    const norm = normalizeText(query);
    if (!norm) return false;
    const outWords = ["날씨", "주식", "환율", "정치", "뉴스", "축구", "야구", "로또", "영화추천", "게임공략"];
    return outWords.some((w) => norm.includes(w));
  }
  function findBestRagIntent(query) {
    const qNorm = normalizeText(query);
    if (!qNorm) return null;
    const qTokens = tokenizeText(qNorm).filter((t) => t.length >= 2);
    const qBigrams = makeBigrams(qNorm);
    let best = null;
    let second = null;

    for (const row of RAG_SEARCH_INDEX) {
      let score = 0;
      if (row.questionNorms.includes(qNorm)) score += 120;
      if (row.allNorm.includes(qNorm)) score += 40;

      for (const tk of qTokens) {
        if (row.keywordSet.has(tk)) score += 14;
        else if (row.allNorm.includes(tk)) score += 4;
      }

      let gramHit = 0;
      for (const g of qBigrams) {
        if (row.bigrams.has(g)) gramHit += 1;
      }
      score += gramHit * 0.9;

      if (!best || score > best.score) {
        second = best;
        best = { row, score };
      } else if (!second || score > second.score) {
        second = { row, score };
      }
    }

    if (!best || best.score < 9) return null;
    if (second && second.score > 0 && best.score < second.score * 1.08) {
      return best.row.intent;
    }
    return best.row.intent;
  }
  function pickRagAnswer(intent, query) {
    const idx = hashText(`${query}|${intent.intent}`) % intent.answers.length;
    return intent.answers[idx];
  }
  function createRagFallback(query) {
    if (isOutOfScopeQuery(query)) {
      return "앗, 그건 제 전문 분야가 아니에요~ 😆 저는 MyDay 앱 전문이거든요! 앱 관련 궁금한 거 있으시면 물어봐 주세요!";
    }
    return "음, 그건 저도 아직 잘 모르겠어요 😅 설정 화면이나 공식 안내를 한번 확인해 보시겠어요?";
  }

  /* ══════════════════════════════════════════
     Latest Blog Content Capture
     ══════════════════════════════════════════ */
  let lastGeneratedBlogDoc = null;
  let blogCaptureHookInstalled = false;

  function parseHashtags(text) {
    const tags = String(text || "").match(/#[^\s#]+/g) || [];
    return uniqueList(tags.map((t) => t.trim()));
  }
  function parseBlogDocument(rawText, fallbackTitle) {
    const normalized = String(rawText || "")
      .replace(/\r\n/g, "\n")
      .replace(/\r/g, "\n")
      .trim();
    if (!normalized) return null;

    const lines = normalized.split("\n").map((line) => line.trimEnd());
    let title = "";
    let titleIndex = -1;
    for (let i = 0; i < lines.length; i += 1) {
      const ln = (lines[i] || "").trim();
      if (!ln) continue;
      title = ln.replace(/^#+\s*/, "");
      titleIndex = i;
      break;
    }
    if (!title && fallbackTitle) title = fallbackTitle;
    if (!title) title = "MyDay 포스팅";

    const bodySource = lines.slice(titleIndex + 1).join("\n").trim();
    const bodyText = bodySource || normalized;
    const hashtags = parseHashtags(normalized);

    return {
      title,
      bodyText,
      hashtags,
      fullText: normalized,
      capturedAt: new Date().toISOString(),
    };
  }
  function stripSectionMarker(text) {
    return String(text || "")
      .replace(/^■\s*/, "")
      .replace(/\s*■$/, "")
      .trim();
  }
  function parseQuotePair(quoteText, quoteAuthor, quoteRaw) {
    let text = String(quoteText || "").trim();
    let author = String(quoteAuthor || "").trim();
    const raw = String(quoteRaw || "").replace(/\r/g, "").trim();

    if (!text && raw) {
      const lines = raw.split("\n").map((l) => l.trim()).filter(Boolean);
      let authorLine = "";
      for (const line of lines) {
        if (/^[-–—]\s*.+\s*[-–—]$/.test(line) || /^-\s*.+$/.test(line)) {
          authorLine = line;
          break;
        }
      }
      if (authorLine && !author) {
        author = authorLine
          .replace(/^[-–—]\s*/, "")
          .replace(/\s*[-–—]$/, "")
          .trim();
      }
      if (!text) {
        text = lines
          .filter((line) => line !== authorLine)
          .join(" ")
          .replace(/^["'“”‘’]+/, "")
          .replace(/["'“”‘’]+$/, "")
          .trim();
      }
    }
    return { text, author };
  }
  function normalizeHashtags(list) {
    const arr = Array.isArray(list) ? list : [];
    return uniqueList(
      arr
        .map((tag) => String(tag || "").trim())
        .filter(Boolean)
        .map((tag) => (tag.startsWith("#") ? tag : `#${tag}`))
    );
  }
  function buildStructuredBlogDoc(data) {
    const payload = data && typeof data === "object" ? data : {};
    const title = String(payload.title || "").trim() || findPostTitleFromDom() || "MyDay 포스팅";
    const quotePair = parseQuotePair(payload.quoteText, payload.quoteAuthor, payload.quote);
    const images = Array.isArray(payload.images) ? payload.images : [];
    const sectionsRaw = Array.isArray(payload.sections) ? payload.sections : [];

    const sections = sectionsRaw.map((sec, idx) => {
      const row = sec && typeof sec === "object" ? sec : {};
      const subtitle = stripSectionMarker(row.subtitle || row.title || `섹션 ${idx + 1}`);
      const body = String(row.body || row.text || "").trim();
      const imageSrc = typeof images[idx] === "string" ? images[idx] : "";
      return { subtitle, body, imageSrc };
    }).filter((sec) => sec.subtitle || sec.body || sec.imageSrc);

    return {
      type: "structured",
      title,
      quoteText: quotePair.text,
      quoteAuthor: quotePair.author,
      sections,
      hashtags: normalizeHashtags(payload.hashtags),
      capturedAt: new Date().toISOString(),
      source: "publish",
    };
  }
  function captureBlogFromPublishRequest(url, requestBody) {
    if (!/\/api\/publish(?:-async)?/i.test(String(url || ""))) return;
    if (typeof requestBody !== "string" || !requestBody.trim()) return;
    let parsed;
    try {
      parsed = JSON.parse(requestBody);
    } catch { return; }

    const doc = buildStructuredBlogDoc(parsed);
    if (!doc.sections.length && !doc.quoteText) return;
    lastGeneratedBlogDoc = doc;
  }
  function captureBlogFromPayload(url, responseText) {
    if (!/\/api\/generate-blog/i.test(String(url || ""))) return;
    let parsed;
    try {
      parsed = JSON.parse(responseText);
    } catch { return; }

    const post =
      (typeof parsed?.post === "string" && parsed.post) ||
      (typeof parsed?.data?.post === "string" && parsed.data.post) ||
      "";
    if (!post || !post.trim()) return;

    const doc = parseBlogDocument(post, findPostTitleFromDom());
    if (!doc) return;
    lastGeneratedBlogDoc = { ...doc, source: "api" };
  }
  function installBlogCaptureHooks() {
    if (blogCaptureHookInstalled) return;
    blogCaptureHookInstalled = true;

    if (typeof XMLHttpRequest !== "undefined") {
      const originalOpen = XMLHttpRequest.prototype.open;
      const originalSend = XMLHttpRequest.prototype.send;

      XMLHttpRequest.prototype.open = function (...args) {
        this.__mydayUrl = typeof args[1] === "string" ? args[1] : "";
        return originalOpen.apply(this, args);
      };
      XMLHttpRequest.prototype.send = function (...args) {
        try {
          captureBlogFromPublishRequest(this.__mydayUrl || "", typeof args[0] === "string" ? args[0] : "");
        } catch {}
        this.addEventListener("load", () => {
          try {
            captureBlogFromPayload(this.__mydayUrl || "", this.responseText || "");
          } catch {}
        });
        return originalSend.apply(this, args);
      };
    }

    if (typeof window.fetch === "function") {
      const originalFetch = window.fetch.bind(window);
      window.fetch = async (...args) => {
        try {
          const url =
            (typeof args[0] === "string" && args[0]) ||
            (args[0] && typeof args[0].url === "string" && args[0].url) ||
            "";
          const reqBody = args[1] && typeof args[1].body === "string" ? args[1].body : "";
          captureBlogFromPublishRequest(url, reqBody);
        } catch {}

        const res = await originalFetch(...args);
        try {
          const url =
            (typeof args[0] === "string" && args[0]) ||
            (args[0] && typeof args[0].url === "string" && args[0].url) ||
            "";
          if (/\/api\/generate-blog/i.test(url)) {
            res.clone().text().then((txt) => {
              captureBlogFromPayload(url, txt);
            }).catch(() => {});
          }
        } catch {}
        return res;
      };
    }
  }
  function extractBlogFromDom(fallbackTitle) {
    const article =
      document.querySelector("main article.bg-white.rounded-3xl") ||
      document.querySelector("main article");
    if (!article) return null;

    const title =
      String(article.querySelector("h1")?.textContent || "").trim() ||
      fallbackTitle ||
      "MyDay 포스팅";

    const hashtags = normalizeHashtags(
      Array.from(article.querySelectorAll("header span"))
        .map((el) => String(el.textContent || "").trim())
        .filter((txt) => txt.startsWith("#"))
    );

    const quoteImage =
      article.querySelector('header img[alt*="철학"]') ||
      article.querySelector('header img[alt*="명언"]') ||
      article.querySelector("header img");
    let quoteText = "";
    let quoteAuthor = "";
    if (!quoteImage) {
      const quoteBlock = article.querySelector("header p");
      const pair = parseQuotePair("", "", quoteBlock ? quoteBlock.innerText || quoteBlock.textContent || "" : "");
      quoteText = pair.text;
      quoteAuthor = pair.author;
    }

    const sections = Array.from(article.querySelectorAll("section")).map((sec, idx) => {
      const img = sec.querySelector("img");
      const subtitleNode = sec.querySelector("h2, h3");
      const body = Array.from(sec.querySelectorAll("p"))
        .map((node) => String(node?.innerText || node?.textContent || "").trim())
        .filter(Boolean)
        .join("\n\n");
      const subtitle = stripSectionMarker(
        String(subtitleNode?.textContent || "").trim() || `섹션 ${idx + 1}`
      );
      const imageSrc = String(img?.getAttribute("src") || "").trim();
      return { subtitle, body, imageSrc };
    }).filter((sec) => sec.subtitle || sec.body || sec.imageSrc);

    if (!sections.length && !quoteImage && !quoteText) return null;
    return {
      type: "structured",
      title,
      quoteText,
      quoteAuthor,
      quoteImageSrc: quoteImage ? String(quoteImage.getAttribute("src") || "").trim() : "",
      sections,
      hashtags,
      capturedAt: new Date().toISOString(),
      source: "dom",
    };
  }
  function toStructuredDoc(doc, fallbackTitle) {
    if (!doc) return null;
    if (doc.type === "structured") return doc;
    const simpleBody = String(doc.bodyText || doc.fullText || "").trim();
    return {
      type: "structured",
      title: String(doc.title || fallbackTitle || "MyDay 포스팅").trim(),
      quoteText: "",
      quoteAuthor: "",
      quoteImageSrc: "",
      sections: [
        {
          subtitle: "포스팅 본문",
          body: simpleBody,
          imageSrc: "",
        },
      ],
      hashtags: normalizeHashtags(doc.hashtags),
      capturedAt: doc.capturedAt || new Date().toISOString(),
      source: doc.source || "fallback",
    };
  }
  function getLatestBlogDocument(fallbackTitle) {
    const domDoc = extractBlogFromDom(fallbackTitle);
    if (domDoc) {
      lastGeneratedBlogDoc = domDoc;
      return domDoc;
    }
    const cached = toStructuredDoc(lastGeneratedBlogDoc, fallbackTitle);
    if (cached) return cached;

    return {
      type: "structured",
      title: fallbackTitle || "MyDay 포스팅",
      quoteText: "",
      quoteAuthor: "",
      quoteImageSrc: "",
      sections: [
        {
          subtitle: "안내",
          body: "직전에 생성된 블로그 본문을 아직 찾지 못했어요.\n포스팅 글을 생성한 뒤 다시 이미지를 생성해 주세요.",
          imageSrc: "",
        },
      ],
      hashtags: [],
      capturedAt: new Date().toISOString(),
      source: "fallback",
    };
  }

  /* ══════════════════════════════════════════
     Publish State Observer
     — Watches DOM for success text to capture
       blog URL and timing info
     ══════════════════════════════════════════ */
  let publishStartTime = 0;
  let lastPublishData = null;
  let successLatched = false;

  function startPublishObserver() {
    const observer = new MutationObserver(() => {
      /* Detect "자동 포스팅 실행" to start timer */
      const allText = document.body.innerText || "";
      if (allText.includes("네이버 블로그 자동 포스팅을 준비하고 있습니다") && !publishStartTime) {
        publishStartTime = Date.now();
        successLatched = false;
      }
      if (!allText.includes("포스팅이 완료되었어요")) {
        successLatched = false;
        return;
      }
      /* Detect success (capture once per success lifecycle) */
      if (!successLatched) {
        successLatched = true;
        const elapsed = publishStartTime ? Math.round((Date.now() - publishStartTime) / 1000) : 0;
        const blogId = getBlogId();
        const blogUrl = findBlogUrlFromDom(blogId);

        /* Try to find image count from DOM */
        const imgEls = document.querySelectorAll('img[src^="data:image"]');
        const imgCount = imgEls.length;
        const title = findPostTitleFromDom();
        const domDoc = extractBlogFromDom(title);
        if (domDoc) {
          lastGeneratedBlogDoc = domDoc;
        }

        /* Get first image for card */
        let heroImgSrc = "";
        if (imgEls.length > 0) {
          heroImgSrc = imgEls[0].src;
        }

        const createdAt = new Date().toISOString();
        lastPublishData = { title, blogUrl, elapsed, imgCount, heroImgSrc, createdAt };
        pushHistory({
          title,
          blogUrl,
          elapsed,
          imgCount,
          createdAt,
        });
        publishStartTime = 0;
      }
    });
    observer.observe(document.body, { childList: true, subtree: true, characterData: true });
  }

  /* ══════════════════════════════════════════
     Share Card Canvas Generator
     ══════════════════════════════════════════ */
  function generateShareCard(canvas, data, refCode) {
    const ctx = canvas.getContext("2d");
    if (!ctx) return;
    canvas.width = CARD_W;
    canvas.height = CARD_H;

    const { title, blogUrl, elapsed, imgCount, heroImgSrc } = data || {};

    /* Background gradient */
    const grad = ctx.createLinearGradient(0, 0, CARD_W, CARD_H);
    grad.addColorStop(0, "#fff4fa");
    grad.addColorStop(0.4, "#ffe9f4");
    grad.addColorStop(1, "#ffffff");
    ctx.fillStyle = grad;
    ctx.fillRect(0, 0, CARD_W, CARD_H);

    const cx = CARD_W / 2;
    ctx.textAlign = "center";
    ctx.textBaseline = "middle";

    /* ── Top section ── */
    ctx.fillStyle = "#8f325c";
    ctx.font = '900 64px "Noto Sans KR", sans-serif';
    ctx.fillText("MyDay", cx, 80);

    ctx.fillStyle = "#b45680";
    ctx.font = '600 28px "Noto Sans KR", sans-serif';
    ctx.fillText("내 하루를 빛나게", cx, 126);

    /* ── Hero area (photo placeholder) ── */
    const heroY = 170;
    const heroH = 540;
    ctx.fillStyle = "#ffe0ed";
    ctx.beginPath();
    roundRect(ctx, 60, heroY, CARD_W - 120, heroH, 24);
    ctx.fill();

    /* Photo icon placeholder */
    ctx.fillStyle = "#ffb5d0";
    ctx.font = '400 80px sans-serif';
    ctx.fillText("📸", cx, heroY + heroH / 2 - 20);
    ctx.fillStyle = "#c06090";
    ctx.font = '700 30px "Noto Sans KR", sans-serif';
    ctx.fillText(`사진 ${imgCount || "?"}장으로 블로그 글 완성!`, cx, heroY + heroH / 2 + 50);

    /* ── Title ── */
    const titleY = heroY + heroH + 50;
    ctx.fillStyle = "#5f3a4e";
    ctx.font = '800 40px "Noto Sans KR", sans-serif';
    const titleLines = wrapText(ctx, title || "MyDay 포스팅", CARD_W - 160);
    titleLines.slice(0, 2).forEach((line, i) => {
      ctx.fillText(line, cx, titleY + i * 50);
    });

    /* ── Stats row ── */
    const statsY = titleY + titleLines.length * 50 + 30;
    ctx.font = '600 26px "Noto Sans KR", sans-serif';
    ctx.fillStyle = "#a06080";
    if (elapsed) {
      ctx.fillText(`⏱️ 소요시간: ${elapsed}초`, cx, statsY);
    }
    if (blogUrl) {
      ctx.fillStyle = "#4a90d9";
      ctx.font = '600 24px "Noto Sans KR", sans-serif';
      ctx.fillText(`🔗 ${blogUrl}`, cx, statsY + 38);
    }

    /* ── Divider ── */
    const divY = statsY + 80;
    ctx.strokeStyle = "#ffd0e0";
    ctx.lineWidth = 2;
    ctx.beginPath();
    ctx.moveTo(100, divY);
    ctx.lineTo(CARD_W - 100, divY);
    ctx.stroke();

    /* ── Referral CTA ── */
    const ctaY = divY + 45;
    ctx.fillStyle = "#c94d7c";
    ctx.font = '800 32px "Noto Sans KR", sans-serif';
    ctx.fillText("MyDay로 나도 30초 블로그 →", cx, ctaY);

    /* ── Referral Code Box ── */
    const codeY = ctaY + 50;
    ctx.fillStyle = "#fff0f5";
    ctx.beginPath();
    roundRect(ctx, CARD_W / 2 - 180, codeY - 24, 360, 56, 14);
    ctx.fill();
    ctx.strokeStyle = "#ffa5c5";
    ctx.lineWidth = 2;
    ctx.setLineDash([8, 4]);
    ctx.beginPath();
    roundRect(ctx, CARD_W / 2 - 180, codeY - 24, 360, 56, 14);
    ctx.stroke();
    ctx.setLineDash([]);

    ctx.fillStyle = "#c94d7c";
    ctx.font = '900 34px "Noto Sans KR", sans-serif';
    ctx.fillText(refCode || "MYDAY-XXXX", cx, codeY + 4);

    /* ── Watermark ── */
    ctx.globalAlpha = WATERMARK_ALPHA;
    ctx.fillStyle = "#cf4f84";
    ctx.font = '900 36px "Noto Sans KR", sans-serif';
    ctx.textAlign = "right";
    ctx.fillText("MyDay 2.0", CARD_W - 40, CARD_H - 30);
    ctx.globalAlpha = 1;
    ctx.textAlign = "center";
  }

  /* If hero image is available, draw it onto the card */
  function drawHeroImage(canvas, imgSrc) {
    return new Promise((resolve) => {
      if (!imgSrc) { resolve(); return; }
      const img = new Image();
      img.crossOrigin = "anonymous";
      img.onload = () => {
        const ctx = canvas.getContext("2d");
        if (!ctx) { resolve(); return; }
        const heroY = 170, heroH = 540, heroX = 60, heroW = CARD_W - 120;

        ctx.save();
        ctx.beginPath();
        roundRect(ctx, heroX, heroY, heroW, heroH, 24);
        ctx.clip();

        /* Center-crop */
        const scale = Math.max(heroW / img.width, heroH / img.height);
        const sw = heroW / scale, sh = heroH / scale;
        const sx = (img.width - sw) / 2, sy = (img.height - sh) / 2;
        ctx.drawImage(img, sx, sy, sw, sh, heroX, heroY, heroW, heroH);
        ctx.restore();

        /* Overlay text on photo */
        const imgCount = lastPublishData ? lastPublishData.imgCount : "?";
        ctx.fillStyle = "rgba(0,0,0,0.35)";
        ctx.beginPath();
        roundRect(ctx, heroX, heroY + heroH - 70, heroW, 70, 0);
        ctx.fill();
        ctx.fillStyle = "#fff";
        ctx.font = '700 28px "Noto Sans KR", sans-serif';
        ctx.textAlign = "center";
        ctx.fillText(`📸 사진 ${imgCount}장으로 블로그 글 완성!`, CARD_W / 2, heroY + heroH - 30);

        resolve();
      };
      img.onerror = () => resolve();
      img.src = imgSrc;
    });
  }

  /* ══════════════════════════════════════════
     Helper: wrap text, round rect
     ══════════════════════════════════════════ */
  function wrapText(ctx, text, maxW) {
    const words = Array.from(text);
    const lines = [];
    let line = "";
    for (const ch of words) {
      const test = line + ch;
      if (line && ctx.measureText(test).width > maxW) {
        lines.push(line);
        line = ch;
      } else {
        line = test;
      }
    }
    if (line) lines.push(line);
    return lines.length ? lines : [""];
  }

  function roundRect(ctx, x, y, w, h, r) {
    ctx.moveTo(x + r, y);
    ctx.lineTo(x + w - r, y);
    ctx.quadraticCurveTo(x + w, y, x + w, y + r);
    ctx.lineTo(x + w, y + h - r);
    ctx.quadraticCurveTo(x + w, y + h, x + w - r, y + h);
    ctx.lineTo(x + r, y + h);
    ctx.quadraticCurveTo(x, y + h, x, y + h - r);
    ctx.lineTo(x, y + r);
    ctx.quadraticCurveTo(x, y, x + r, y);
    ctx.closePath();
  }

  /* ══════════════════════════════════════════
     Share Functions
     ══════════════════════════════════════════ */
  async function shareViaWebAPI(canvas, refCode) {
    try {
      const blob = await new Promise(r => canvas.toBlob(r, "image/png"));
      if (!blob) throw new Error("blob failed");
      if (navigator.share) {
        const payload = {
          title: "MyDay 2.0",
          text: `MyDay로 30초 만에 블로그 글 완성! 🎉\n초대코드: ${refCode}`,
        };
        if (typeof File !== "undefined") {
          const file = new File([blob], "myday-share-card.png", { type: "image/png" });
          if (!navigator.canShare || navigator.canShare({ files: [file] })) {
            await navigator.share({ ...payload, files: [file] });
            return true;
          }
        }
        await navigator.share(payload);
        return true;
      }
    } catch (e) {
      if (e.name === "AbortError") return true; /* user cancelled */
    }
    return false;
  }

  function downloadCard(canvas) {
    try {
      const a = document.createElement("a");
      a.href = canvas.toDataURL("image/png");
      a.download = "myday-share-" + Date.now() + ".png";
      a.click();
      return true;
    } catch { return false; }
  }

  async function copyCode(code) {
    try {
      if (navigator.clipboard && window.isSecureContext) {
        await navigator.clipboard.writeText(code);
        return true;
      }
    } catch {}
    try {
      const ta = document.createElement("textarea");
      ta.value = code;
      ta.setAttribute("readonly", "readonly");
      ta.style.position = "fixed";
      ta.style.opacity = "0";
      ta.style.pointerEvents = "none";
      document.body.appendChild(ta);
      ta.focus();
      ta.select();
      const ok = document.execCommand("copy");
      document.body.removeChild(ta);
      if (!ok) return false;
      return true;
    } catch { return false; }
  }
  function wrapCanvasLine(ctx, text, maxW) {
    const chars = Array.from(String(text || ""));
    const lines = [];
    let line = "";
    for (const ch of chars) {
      const test = line + ch;
      if (line && ctx.measureText(test).width > maxW) {
        lines.push(line);
        line = ch;
      } else {
        line = test;
      }
    }
    if (line) lines.push(line);
    return lines.length ? lines : [""];
  }
  function buildWrappedBodyLines(ctx, bodyText, maxW) {
    const paragraphs = String(bodyText || "").replace(/\r\n/g, "\n").split("\n");
    const lines = [];
    paragraphs.forEach((paragraph, idx) => {
      const p = paragraph.trim();
      if (!p) {
        lines.push("");
        return;
      }
      const wrapped = wrapCanvasLine(ctx, p, maxW);
      wrapped.forEach((line) => lines.push(line));
      if (idx < paragraphs.length - 1) {
        lines.push("");
      }
    });
    return lines;
  }
  function loadImageSafe(src) {
    return new Promise((resolve) => {
      const url = String(src || "").trim();
      if (!url) {
        resolve(null);
        return;
      }
      const img = new Image();
      img.crossOrigin = "anonymous";
      img.onload = () => resolve(img);
      img.onerror = () => resolve(null);
      img.src = url;
    });
  }
  async function drawBlogSnapshotImage(canvas, doc) {
    const ctx = canvas.getContext("2d");
    if (!ctx) return;

    const WIDTH = 1080;
    const PAD_X = 84;
    const TITLE_LINE_H = 68;
    const BODY_LINE_H = 46;
    const BODY_EMPTY_H = 16;
    const CONTENT_W = WIDTH - PAD_X * 2;
    const titleText = String(doc.title || "MyDay 포스팅").trim();

    ctx.font = '900 56px "Noto Sans KR", sans-serif';
    const titleLines = wrapCanvasLine(ctx, titleText, CONTENT_W);

    const quoteText = String(doc.quoteText || "").trim();
    const quoteAuthor = String(doc.quoteAuthor || "").trim();
    const quoteImageSrc = String(doc.quoteImageSrc || "").trim();

    ctx.font = '500 32px "Noto Sans KR", sans-serif';
    const quoteLines = quoteText ? wrapCanvasLine(ctx, quoteText, CONTENT_W - 40) : [];

    const sections = Array.isArray(doc.sections) ? doc.sections : [];
    const sectionLayouts = [];
    for (const sec of sections) {
      const subtitle = String(sec.subtitle || "").trim();
      const body = String(sec.body || "").trim();
      const image = await loadImageSafe(sec.imageSrc);
      ctx.font = '700 34px "Noto Sans KR", sans-serif';
      const subtitleLines = subtitle ? wrapCanvasLine(ctx, subtitle, CONTENT_W) : [];
      ctx.font = '500 30px "Noto Sans KR", sans-serif';
      const bodyLines = body ? buildWrappedBodyLines(ctx, body, CONTENT_W) : [];
      let imageHeight = 0;
      if (image) {
        const naturalH = CONTENT_W * (image.naturalHeight || image.height) / Math.max(1, image.naturalWidth || image.width);
        imageHeight = Math.max(240, Math.min(1600, Math.round(naturalH)));
      }
      sectionLayouts.push({
        subtitleLines,
        bodyLines,
        image,
        imageHeight,
      });
    }

    const hashtags = normalizeHashtags(doc.hashtags);
    ctx.font = '700 28px "Noto Sans KR", sans-serif';
    const tagLines = hashtags.length ? wrapCanvasLine(ctx, hashtags.join(" "), CONTENT_W) : [];

    let dynamicHeight = 140;
    dynamicHeight += titleLines.length * TITLE_LINE_H + 36;
    if (quoteImageSrc || quoteText) {
      dynamicHeight += 52;
      if (quoteImageSrc) {
        dynamicHeight += 460;
      } else {
        dynamicHeight += 26;
        dynamicHeight += quoteLines.length * 52;
        if (quoteAuthor) dynamicHeight += 52;
      }
      dynamicHeight += 36;
    }
    for (const sec of sectionLayouts) {
      dynamicHeight += 44;
      if (sec.imageHeight) dynamicHeight += sec.imageHeight + 22;
      dynamicHeight += sec.subtitleLines.length * 52;
      for (const line of sec.bodyLines) {
        dynamicHeight += line ? BODY_LINE_H : BODY_EMPTY_H;
      }
      dynamicHeight += 30;
    }
    dynamicHeight += tagLines.length ? 26 + tagLines.length * 40 : 0;
    dynamicHeight += 86;

    const HEIGHT = Math.max(1700, dynamicHeight);
    canvas.width = WIDTH;
    canvas.height = HEIGHT;

    ctx.fillStyle = "#ffffff";
    ctx.fillRect(0, 0, WIDTH, HEIGHT);

    ctx.fillStyle = "#ffffff";
    ctx.beginPath();
    roundRect(ctx, 22, 22, WIDTH - 44, HEIGHT - 44, 26);
    ctx.fill();
    ctx.strokeStyle = "#f0f0f0";
    ctx.lineWidth = 1.5;
    ctx.beginPath();
    roundRect(ctx, 22, 22, WIDTH - 44, HEIGHT - 44, 26);
    ctx.stroke();

    let y = 88;
    ctx.textAlign = "left";
    ctx.textBaseline = "alphabetic";

    ctx.fillStyle = "#242424";
    ctx.font = '900 56px "Noto Sans KR", sans-serif';
    titleLines.forEach((line) => {
      ctx.fillText(line, PAD_X, y);
      y += TITLE_LINE_H;
    });

    if (quoteImageSrc || quoteText) {
      y += 24;
      ctx.fillStyle = "#5b5b5b";
      ctx.font = '700 32px "Noto Sans KR", sans-serif';
      ctx.fillText("오늘의 철학", PAD_X, y);
      y += 30;

      if (quoteImageSrc) {
        const quoteImg = await loadImageSafe(quoteImageSrc);
        if (quoteImg) {
          const h = Math.max(260, Math.min(460, Math.round(CONTENT_W * (quoteImg.naturalHeight || quoteImg.height) / Math.max(1, quoteImg.naturalWidth || quoteImg.width))));
          ctx.save();
          ctx.beginPath();
          roundRect(ctx, PAD_X, y, CONTENT_W, h, 20);
          ctx.clip();
          ctx.drawImage(quoteImg, 0, 0, quoteImg.naturalWidth || quoteImg.width, quoteImg.naturalHeight || quoteImg.height, PAD_X, y, CONTENT_W, h);
          ctx.restore();
          y += h + 20;
        }
      } else {
        y += 20;
        ctx.fillStyle = "#424242";
        ctx.font = '500 32px "Noto Sans KR", sans-serif';
        quoteLines.forEach((line) => {
          ctx.fillText(line, PAD_X + 16, y);
          y += 52;
        });
        if (quoteAuthor) {
          ctx.fillStyle = "#6d6d6d";
          ctx.font = '600 28px "Noto Sans KR", sans-serif';
          ctx.fillText(`- ${quoteAuthor} -`, PAD_X + 16, y);
          y += 48;
        }
      }
      y += 20;
    }

    for (let idx = 0; idx < sectionLayouts.length; idx += 1) {
      const sec = sectionLayouts[idx];
      ctx.fillStyle = "#5b5b5b";
      ctx.font = '700 32px "Noto Sans KR", sans-serif';
      ctx.fillText(`섹션 ${idx + 1}`, PAD_X, y);
      y += 30;

      if (sec.image && sec.imageHeight) {
        ctx.save();
        ctx.beginPath();
        roundRect(ctx, PAD_X, y, CONTENT_W, sec.imageHeight, 16);
        ctx.clip();
        ctx.drawImage(sec.image, 0, 0, sec.image.naturalWidth || sec.image.width, sec.image.naturalHeight || sec.image.height, PAD_X, y, CONTENT_W, sec.imageHeight);
        ctx.restore();
        y += sec.imageHeight + 18;
      }

      ctx.fillStyle = "#232323";
      ctx.font = '700 34px "Noto Sans KR", sans-serif';
      sec.subtitleLines.forEach((line) => {
        ctx.fillText(line, PAD_X, y);
        y += 52;
      });

      ctx.fillStyle = "#3d3d3d";
      ctx.font = '500 30px "Noto Sans KR", sans-serif';
      sec.bodyLines.forEach((line) => {
        if (!line) {
          y += BODY_EMPTY_H;
          return;
        }
        ctx.fillText(line, PAD_X, y);
        y += BODY_LINE_H;
      });
      y += 24;
    }

    if (tagLines.length > 0) {
      y += 8;
      ctx.fillStyle = "#545454";
      ctx.font = '700 28px "Noto Sans KR", sans-serif';
      tagLines.forEach((line) => {
        ctx.fillText(line, PAD_X, y);
        y += 40;
      });
    }

    const footer = formatDateTime(doc.capturedAt || new Date().toISOString());
    ctx.fillStyle = "#9a9a9a";
    ctx.font = '600 24px "Noto Sans KR", sans-serif';
    ctx.fillText(`생성시각 ${footer || "-"}`, PAD_X, HEIGHT - 54);
  }
  async function copyCanvasImage(canvas) {
    try {
      const blob = await new Promise((resolve) => canvas.toBlob(resolve, "image/png"));
      if (!blob) return false;
      if (!navigator.clipboard || !window.isSecureContext || typeof ClipboardItem === "undefined") {
        return false;
      }
      if (typeof ClipboardItem.supports === "function" && !ClipboardItem.supports(blob.type)) {
        return false;
      }
      await navigator.clipboard.write([
        new ClipboardItem({ [blob.type]: blob }),
      ]);
      return true;
    } catch { return false; }
  }

  /* ══════════════════════════════════════════
     Build UI
     ══════════════════════════════════════════ */
  function createUI() {
    if (document.getElementById("myday-bottom-nav-root")) return;
    const ref = getOrCreateCode();
    const root = document.createElement("div");
    root.id = "myday-bottom-nav-root";

    /* ── Bottom Navigation Bar ── */
    const nav = document.createElement("div");
    nav.className = "myday-bottom-nav";

    const shareBtn = createNavItem(
      '<svg viewBox="0 0 24 24" fill="#c94d7c"><path d="M16 5l-1.42 1.42-1.59-1.59V16h-2V4.83l-1.59 1.59L8 5l4-4 4 4zm4 5v11c0 1.1-.9 2-2 2H6c-1.11 0-2-.9-2-2V10c0-1.11.89-2 2-2h3v2H6v11h12V10h-3V8h3c1.1 0 2 .89 2 2z"/></svg>',
      "공유·초대"
    );
    const historyBtn = createNavItem(
      '<svg viewBox="0 0 24 24" fill="#c94d7c"><path d="M13 3a9 9 0 1 0 8.95 10h-2.02A7 7 0 1 1 13 5V1l5 4-5 4V6z"/><path d="M12 8h2v5h-2zm0 6h2v2h-2z"/></svg>',
      "포스팅기록"
    );
    const helpBtn = createNavItem(
      '<svg viewBox="0 0 24 24" fill="#c94d7c"><path d="M12 2a10 10 0 1 0 10 10A10 10 0 0 0 12 2zm.1 15.8a1.2 1.2 0 1 1 1.2-1.2 1.2 1.2 0 0 1-1.2 1.2zm2.2-7.4-.9.6a2 2 0 0 0-1 1.7V13h-2v-.9a3.7 3.7 0 0 1 1.8-3.2l1.1-.7a1.7 1.7 0 1 0-2.7-1.4H8.6a3.7 3.7 0 1 1 7.4 0 3.5 3.5 0 0 1-1.7 3z"/></svg>',
      "빠른도움"
    );
    nav.appendChild(shareBtn);
    nav.appendChild(historyBtn);
    nav.appendChild(helpBtn);

    /* ── Share Modal ── */
    const overlay = document.createElement("div");
    overlay.className = "myday-share-overlay";
    const modal = document.createElement("div");
    modal.className = "myday-share-modal";
    const header = document.createElement("div");
    header.className = "myday-share-modal-header";
    header.innerHTML = '<h2>공유 · 초대</h2>';
    const closeBtn = document.createElement("button");
    closeBtn.className = "myday-share-modal-close";
    closeBtn.textContent = "✕";
    header.appendChild(closeBtn);
    const body = document.createElement("div");
    body.className = "myday-share-modal-body";
    const previewWrap = document.createElement("div");
    previewWrap.className = "myday-share-card-preview";
    const cardCanvas = document.createElement("canvas");
    cardCanvas.className = "myday-share-long-canvas";
    previewWrap.appendChild(cardCanvas);
    const shareGuide = document.createElement("div");
    shareGuide.className = "myday-share-copy-guide";
    shareGuide.textContent = "지금 이미지가 생성되었습니다. 버튼을 누르면 이미지가 복사됩니다. 원하는 곳에 가서 붙여넣기 하면 인스타, SNS 등 다양하게 활용할 수 있습니다.";
    const actions = document.createElement("div");
    actions.className = "myday-share-actions";
    const copyImageBtn = document.createElement("button");
    copyImageBtn.className = "myday-share-btn primary";
    copyImageBtn.textContent = "🖼️ 이미지 복사";
    const refreshImageBtn = document.createElement("button");
    refreshImageBtn.className = "myday-share-btn secondary";
    refreshImageBtn.textContent = "🔄 이미지 다시 생성";
    const shareStatus = document.createElement("div");
    shareStatus.className = "myday-share-copy-status";
    actions.appendChild(copyImageBtn);
    actions.appendChild(refreshImageBtn);
    body.appendChild(previewWrap);
    body.appendChild(shareGuide);
    body.appendChild(actions);
    body.appendChild(shareStatus);
    modal.appendChild(header);
    modal.appendChild(body);
    overlay.appendChild(modal);

    /* ── History Modal ── */
    const historyOverlay = document.createElement("div");
    historyOverlay.className = "myday-share-overlay";
    const historyModal = document.createElement("div");
    historyModal.className = "myday-share-modal";
    const historyHeader = document.createElement("div");
    historyHeader.className = "myday-share-modal-header";
    historyHeader.innerHTML = "<h2>포스팅 기록</h2>";
    const historyCloseBtn = document.createElement("button");
    historyCloseBtn.className = "myday-share-modal-close";
    historyCloseBtn.textContent = "✕";
    historyHeader.appendChild(historyCloseBtn);
    const historyBody = document.createElement("div");
    historyBody.className = "myday-share-modal-body";
    const historyList = document.createElement("div");
    historyList.className = "myday-history-list";
    const historyActions = document.createElement("div");
    historyActions.className = "myday-share-actions";
    const clearHistoryBtn = document.createElement("button");
    clearHistoryBtn.className = "myday-share-btn secondary";
    clearHistoryBtn.textContent = "기록 비우기";
    historyActions.appendChild(clearHistoryBtn);
    historyBody.appendChild(historyList);
    historyBody.appendChild(historyActions);
    historyModal.appendChild(historyHeader);
    historyModal.appendChild(historyBody);
    historyOverlay.appendChild(historyModal);

    /* ── Quick Help Modal ── */
    const helpOverlay = document.createElement("div");
    helpOverlay.className = "myday-share-overlay";
    const helpModal = document.createElement("div");
    helpModal.className = "myday-share-modal";
    const helpHeader = document.createElement("div");
    helpHeader.className = "myday-share-modal-header";
    helpHeader.innerHTML = "<h2>빠른 도움</h2>";
    const helpCloseBtn = document.createElement("button");
    helpCloseBtn.className = "myday-share-modal-close";
    helpCloseBtn.textContent = "✕";
    helpHeader.appendChild(helpCloseBtn);
    const helpBody = document.createElement("div");
    helpBody.className = "myday-share-modal-body";

    const ragIntro = document.createElement("div");
    ragIntro.className = "myday-rag-intro";
    ragIntro.innerHTML = `
      <div class="myday-rag-badge">RAG FAQ · ${RAG_META.intentCount} Intent · ${RAG_META.questionCount}Q</div>
      <div class="myday-share-hint">질문 표현이 달라도 자동으로 가장 가까운 의도를 찾아 답해요.</div>`;

    const ragQuick = document.createElement("div");
    ragQuick.className = "myday-rag-quick";
    const ragQuickQuestions = [
      "Gemini API 키는 어디서 발급해요?",
      "사진은 몇 장까지 올릴 수 있어요?",
      "포스팅 실패하면 어떻게 해요?",
      "온보딩 다시 보는 방법 알려줘요",
    ];
    const ragQuickButtons = ragQuickQuestions.map((q) => {
      const btn = document.createElement("button");
      btn.className = "myday-rag-quick-btn";
      btn.textContent = q;
      ragQuick.appendChild(btn);
      return { btn, q };
    });

    const ragChat = document.createElement("div");
    ragChat.className = "myday-rag-chat";

    const ragInputWrap = document.createElement("div");
    ragInputWrap.className = "myday-rag-input";
    const ragInput = document.createElement("input");
    ragInput.type = "text";
    ragInput.placeholder = "앱 사용 질문을 입력해 주세요";
    ragInput.maxLength = 220;
    ragInput.enterKeyHint = "send";
    const ragSendBtn = document.createElement("button");
    ragSendBtn.textContent = "전송";
    ragInputWrap.appendChild(ragInput);
    ragInputWrap.appendChild(ragSendBtn);

    const helpActions = document.createElement("div");
    helpActions.className = "myday-share-actions";
    const openBlogBtn = document.createElement("button");
    openBlogBtn.className = "myday-share-btn secondary";
    openBlogBtn.textContent = "🔗 내 블로그 열기";
    const copyReferralBtn = document.createElement("button");
    copyReferralBtn.className = "myday-share-btn secondary";
    copyReferralBtn.textContent = "📋 초대코드 복사";

    helpActions.appendChild(openBlogBtn);
    helpActions.appendChild(copyReferralBtn);
    const helpHint = document.createElement("div");
    helpHint.className = "myday-share-hint";
    helpHint.textContent = "앱과 무관한 질문은 답변하지 않아요.";
    helpActions.appendChild(helpHint);

    helpBody.appendChild(ragIntro);
    helpBody.appendChild(ragQuick);
    helpBody.appendChild(ragChat);
    helpBody.appendChild(ragInputWrap);
    helpBody.appendChild(helpActions);
    helpModal.appendChild(helpHeader);
    helpModal.appendChild(helpBody);
    helpOverlay.appendChild(helpModal);

    root.appendChild(nav);
    root.appendChild(overlay);
    root.appendChild(historyOverlay);
    root.appendChild(helpOverlay);
    document.body.appendChild(root);
    document.body.classList.add("myday-has-bottom-nav");

    /* ── Events ── */
    let openPane = "";
    function setActiveNav(activeBtn) {
      [shareBtn, historyBtn, helpBtn].forEach((btn) => {
        btn.classList.toggle("active", btn === activeBtn);
      });
    }
    function closeAll() {
      overlay.classList.remove("open");
      historyOverlay.classList.remove("open");
      helpOverlay.classList.remove("open");
      openPane = "";
      setActiveNav(null);
    }
    function togglePane(pane) {
      if (openPane === pane) {
        closeAll();
        return;
      }
      closeAll();
      openPane = pane;
      if (pane === "share") {
        overlay.classList.add("open");
        setActiveNav(shareBtn);
        renderShareImage().catch(() => {
          setShareStatus("이미지 생성 중 오류가 발생했어요. 다시 생성 버튼을 눌러 주세요.", "fail");
        });
      } else if (pane === "history") {
        historyOverlay.classList.add("open");
        setActiveNav(historyBtn);
        renderHistory();
      } else if (pane === "help") {
        helpOverlay.classList.add("open");
        setActiveNav(helpBtn);
        ensureRagWelcome();
        setTimeout(() => { ragInput.focus(); }, 50);
      }
    }
    function setShareStatus(message, tone) {
      shareStatus.className = "myday-share-copy-status";
      if (tone === "ok") shareStatus.classList.add("ok");
      if (tone === "fail") shareStatus.classList.add("fail");
      shareStatus.textContent = message;
    }
    async function renderShareImage() {
      const fallbackTitle = (lastPublishData && lastPublishData.title) || "MyDay 포스팅";
      const doc = getLatestBlogDocument(fallbackTitle);
      await drawBlogSnapshotImage(cardCanvas, doc);
      setShareStatus("지금 이미지가 나타났습니다. 이미지 또는 버튼을 눌러 복사해 주세요.", "");
    }
    async function copyShareImage() {
      try {
        if (!cardCanvas.width || !cardCanvas.height) {
          await renderShareImage();
        }
        let ok = await copyCanvasImage(cardCanvas);
        if (!ok && cardCanvas.width && cardCanvas.height) {
          await renderShareImage();
          ok = await copyCanvasImage(cardCanvas);
        }
        if (ok) {
          setShareStatus("복사 완료! 원하는 곳에 붙여넣기해서 인스타, SNS 등에 활용해 보세요.", "ok");
        } else {
          setShareStatus("이 환경에서는 이미지 복사가 지원되지 않습니다. 다시 생성 후 저장해서 사용해 주세요.", "fail");
        }
      } catch {
        setShareStatus("이미지 복사 중 오류가 발생했어요. 다시 생성 후 시도해 주세요.", "fail");
      }
    }
    function renderHistory() {
      const items = loadHistory();
      if (!items.length) {
        historyList.innerHTML = '<div class="myday-history-empty">아직 완료된 포스팅 기록이 없어요.</div>';
        return;
      }
      historyList.innerHTML = items.map((item, idx) => {
        const title = escapeHtml(item.title || "MyDay 포스팅");
        const url = String(item.blogUrl || "").trim();
        const encodedUrl = encodeURIComponent(url);
        const time = escapeHtml(formatDateTime(item.createdAt));
        const meta = `사진 ${item.imgCount || 0}장 · ${item.elapsed || 0}초`;
        return `
          <div class="myday-history-item">
            <div class="myday-history-index">${idx + 1}</div>
            <div class="myday-history-content">
              <div class="myday-history-title">${title}</div>
              <div class="myday-history-meta">${escapeHtml(meta)}</div>
              ${time ? `<div class="myday-history-time">${time}</div>` : ""}
            </div>
            ${url ? `<button class="myday-history-open" data-url="${encodedUrl}">열기</button>` : ""}
          </div>`;
      }).join("");
      const openBtns = historyList.querySelectorAll(".myday-history-open");
      for (const b of openBtns) {
        b.addEventListener("click", () => {
          const encodedUrl = b.getAttribute("data-url") || "";
          const blogUrl = decodeURIComponent(encodedUrl);
          if (!blogUrl) return;
          window.open(blogUrl, "_blank", "noopener,noreferrer");
        });
      }
    }
    function scrollRagToBottom() {
      requestAnimationFrame(() => {
        ragChat.scrollTop = ragChat.scrollHeight;
      });
    }
    function addRagMessage(role, text, meta) {
      const row = document.createElement("div");
      row.className = `myday-rag-row ${role}`;

      const bubble = document.createElement("div");
      bubble.className = "myday-rag-bubble";
      bubble.textContent = text;
      row.appendChild(bubble);

      if (meta && role === "bot") {
        const metaEl = document.createElement("div");
        metaEl.className = "myday-rag-meta";
        metaEl.textContent = meta;
        row.appendChild(metaEl);
      }
      ragChat.appendChild(row);
      scrollRagToBottom();
    }
    function ensureRagWelcome() {
      if (ragChat.childElementCount > 0) return;
      addRagMessage(
        "bot",
        "안녕하세요! 마이 도우미예요 😊 앱 사용 중 궁금한 점 편하게 물어봐 주세요~",
        `intent:${RAG_META.intentCount} · qa:${RAG_META.questionCount}`
      );
    }
    function getBackendUrl() {
      try {
        const stored = (localStorage.getItem("NAVER_BLOG_BACKEND_URL_MYDAY210") || "").trim().replace(/\/$/,"");
        return stored || "https://ilsang-mooja-api-production.up.railway.app";
      } catch { return "https://ilsang-mooja-api-production.up.railway.app"; }
    }
    function getGeminiApiKey() {
      const parsed = getSetupSnapshot();
      return (parsed.geminiApiKey || "").trim();
    }
    async function askServerRag(query) {
      const url = getBackendUrl();
      const apiKey = getGeminiApiKey();
      const res = await fetch(`${url}/api/chat`, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ query, geminiApiKey: apiKey }),
        signal: AbortSignal.timeout(15000),
      });
      if (!res.ok) throw new Error(`Server ${res.status}`);
      const data = await res.json();
      if (!data.success) throw new Error(data.message || "Server error");
      return data.answer;
    }
    function isTermQuestion(query) {
      const norm = normalizeText(query);
      return /(.+)(이|가)\s*(뭐|무엇|무슨|어떤|뭔)/.test(norm)
        || /(.+)(이란|이라는|이란게|뜻|의미|개념)/.test(norm)
        || /^(뭐|무엇).*(이|가|란|야|예요|인가)/.test(norm);
    }
    async function askRag(query) {
      const q = String(query || "").trim();
      if (!q) return;
      addRagMessage("user", q);

      // 용어 질문("~이 뭐니", "~이란" 등)은 서버 RAG로 직행
      if (isTermQuestion(q)) {
        addRagMessage("bot", "잠시만요, 찾아볼게요... 🔍", "thinking");
        try {
          const serverAnswer = await askServerRag(q);
          const lastMsg = ragChat.lastElementChild;
          if (lastMsg && lastMsg.textContent.includes("잠시만요")) lastMsg.remove();
          addRagMessage("bot", serverAnswer, "AI 답변");
        } catch (e) {
          const lastMsg = ragChat.lastElementChild;
          if (lastMsg && lastMsg.textContent.includes("잠시만요")) lastMsg.remove();
          addRagMessage("bot", createRagFallback(q), "fallback");
        }
        return;
      }

      const intent = findBestRagIntent(q);
      if (intent) {
        const answer = pickRagAnswer(intent, q);
        addRagMessage("bot", answer, `${intent.categoryLabel} · ${intent.intent}`);
        return;
      }

      // 로컬 매칭 실패 → 서버 RAG 호출
      addRagMessage("bot", "잠시만요, 찾아볼게요... 🔍", "thinking");
      try {
        const serverAnswer = await askServerRag(q);
        // thinking 메시지 제거
        const lastMsg = ragChat.lastElementChild;
        if (lastMsg && lastMsg.textContent.includes("잠시만요")) lastMsg.remove();
        addRagMessage("bot", serverAnswer, "AI 답변");
      } catch (e) {
        const lastMsg = ragChat.lastElementChild;
        if (lastMsg && lastMsg.textContent.includes("잠시만요")) lastMsg.remove();
        addRagMessage("bot", createRagFallback(q), "fallback");
      }
    }
    function submitRagQuery() {
      const q = ragInput.value.trim();
      if (!q) return;
      ragInput.value = "";
      askRag(q);
    }

    shareBtn.addEventListener("click", () => togglePane("share"));
    historyBtn.addEventListener("click", () => togglePane("history"));
    helpBtn.addEventListener("click", () => togglePane("help"));
    closeBtn.addEventListener("click", closeAll);
    historyCloseBtn.addEventListener("click", closeAll);
    helpCloseBtn.addEventListener("click", closeAll);
    overlay.addEventListener("click", (e) => {
      if (e.target === overlay) closeAll();
    });
    historyOverlay.addEventListener("click", (e) => {
      if (e.target === historyOverlay) closeAll();
    });
    helpOverlay.addEventListener("click", (e) => {
      if (e.target === helpOverlay) closeAll();
    });

    copyImageBtn.addEventListener("click", copyShareImage);
    refreshImageBtn.addEventListener("click", () => {
      renderShareImage().catch(() => {
        setShareStatus("이미지 생성 중 오류가 발생했어요. 다시 눌러 주세요.", "fail");
      });
    });
    cardCanvas.addEventListener("click", copyShareImage);
    clearHistoryBtn.addEventListener("click", () => {
      saveHistory([]);
      renderHistory();
    });
    ragSendBtn.addEventListener("click", submitRagQuery);
    ragInput.addEventListener("keydown", (e) => {
      if (e.key !== "Enter") return;
      e.preventDefault();
      submitRagQuery();
    });
    for (const item of ragQuickButtons) {
      item.btn.addEventListener("click", () => askRag(item.q));
    }
    openBlogBtn.addEventListener("click", async () => {
      await loadSetup().catch(() => {});
      const blogId = getBlogId();
      if (!blogId) {
        alert("블로그 아이디가 아직 설정되지 않았어요.");
        return;
      }
      window.open(`https://blog.naver.com/${encodeURIComponent(blogId)}`, "_blank", "noopener,noreferrer");
    });
    copyReferralBtn.addEventListener("click", async () => {
      const ok = await copyCode(ref.code);
      copyReferralBtn.textContent = ok ? "✅ 복사됨!" : "❗ 복사 실패";
      setTimeout(() => { copyReferralBtn.textContent = "📋 초대코드 복사"; }, 1300);
    });
  }

  function createNavItem(svgHtml, label) {
    const btn = document.createElement("button");
    btn.className = "myday-bottom-nav-item";
    btn.innerHTML = `${svgHtml}<span>${label}</span>`;
    return btn;
  }

  /* ══════════════════════════════════════════
     Init
     ══════════════════════════════════════════ */
  function init() {
    document.documentElement.setAttribute("data-myday-runtime", RUNTIME_ID);
    document.documentElement.setAttribute("data-myday-package", RUNTIME_PACKAGE);
    loadSetup().catch(() => {});
    window.addEventListener("focus", () => { loadSetup().catch(() => {}); });
    installBlogCaptureHooks();
    createUI();
    startPublishObserver();
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", init);
  } else {
    init();
  }
})();
