.class public Lcom/getcapacitor/plugin/SystemBars;
.super Lcom/getcapacitor/Plugin;
.source "SystemBars.java"


# annotations
.annotation runtime Lcom/getcapacitor/annotation/CapacitorPlugin;
.end annotation


# static fields
.field static final BAR_GESTURE_BAR:Ljava/lang/String; = "NavigationBar"

.field static final BAR_STATUS_BAR:Ljava/lang/String; = "StatusBar"

.field static final INSETS_HANDLING_CSS:Ljava/lang/String; = "css"

.field static final INSETS_HANDLING_DISABLE:Ljava/lang/String; = "disable"

.field static final STYLE_DARK:Ljava/lang/String; = "DARK"

.field static final STYLE_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field static final STYLE_LIGHT:Ljava/lang/String; = "LIGHT"

.field private static final WEBVIEW_VERSION_WITH_SAFE_AREA_FIX:I = 0x8c

.field private static final WEBVIEW_VERSION_WITH_SAFE_AREA_KEYBOARD_FIX:I = 0x90

.field static final viewportMetaJSFunction:Ljava/lang/String; = "function capacitorSystemBarsCheckMetaViewport() {\n    const meta = document.querySelectorAll(\"meta[name=viewport]\");\n    if (meta.length == 0) {\n        return false;\n    }\n    // get the last found meta viewport tag\n    const metaContent = meta[meta.length - 1].content;\n    return metaContent.includes(\"viewport-fit=cover\");\n}\ncapacitorSystemBarsCheckMetaViewport();\n"


# instance fields
.field private currentStyle:Ljava/lang/String;

.field private hasViewportCover:Z

.field private insetHandlingEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$EvylPBzZjLdoAOeHbCFhbstdvp8(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/plugin/SystemBars;->lambda$initSystemBars$0(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$HlI18or9g2v3jxTp55f72skUXyo(Lcom/getcapacitor/plugin/SystemBars;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/getcapacitor/plugin/SystemBars;->lambda$injectSafeAreaCSS$7(FFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$MxcIqheKqAh0CeZVgL9o8jfnslI(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/getcapacitor/plugin/SystemBars;->lambda$setStyle$1(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QMjT0isIammsCKWnfmRyRvdoGco(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/plugin/SystemBars;->lambda$hide$3(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UjDIyPOa6OlxC3ysdJABQVA9OtA(Lcom/getcapacitor/plugin/SystemBars;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/plugin/SystemBars;->lambda$initWindowInsetsListener$6(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_TR-y5xYaIeYtWKuA4ceEIMUVag(Lcom/getcapacitor/plugin/SystemBars;)V
    .locals 0

    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->lambda$onDOMReady$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$mx3q8c48aQqW-qpHkXPpUu2eByA(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/plugin/SystemBars;->lambda$show$2(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ze9BKCK53rNqvFx6uwVYQomNzYY(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/getcapacitor/plugin/SystemBars;->lambda$onDOMReady$4(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/getcapacitor/Plugin;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/getcapacitor/plugin/SystemBars;->insetHandlingEnabled:Z

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/getcapacitor/plugin/SystemBars;->hasViewportCover:Z

    .line 59
    const-string v0, "DEFAULT"

    iput-object v0, p0, Lcom/getcapacitor/plugin/SystemBars;->currentStyle:Ljava/lang/String;

    return-void
.end method

.method private calcSafeAreaInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;
    .locals 5
    .param p1, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 157
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 158
    .local v0, "safeArea":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    iget v4, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v1, v2, v3, v4}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method private getBottomInset(Landroidx/core/graphics/Insets;Z)I
    .locals 2
    .param p1, "systemBarsInsets"    # Landroidx/core/graphics/Insets;
    .param p2, "keyboardVisible"    # Z

    .line 330
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->getWebViewMajorVersion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x90

    if-ge v0, v1, :cond_0

    .line 335
    if-eqz p2, :cond_0

    .line 336
    const/4 v0, 0x0

    return v0

    .line 340
    :cond_0
    iget v0, p1, Landroidx/core/graphics/Insets;->bottom:I

    return v0
.end method

.method private getStyleForTheme()Ljava/lang/String;
    .locals 2

    .line 304
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    .line 305
    .local v0, "currentNightMode":I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 306
    const-string v1, "LIGHT"

    return-object v1

    .line 308
    :cond_0
    const-string v1, "DARK"

    return-object v1
.end method

.method private getWebViewMajorVersion()Ljava/lang/Integer;
    .locals 4

    .line 320
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/webkit/WebViewCompat;->getCurrentWebViewPackage(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 321
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 322
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "versionSegments":[Ljava/lang/String;
    aget-object v1, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 326
    .end local v2    # "versionSegments":[Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method private initSafeAreaCSSVariables()V
    .locals 7

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/getcapacitor/plugin/SystemBars;->insetHandlingEnabled:Z

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 167
    .local v0, "v":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    .line 168
    .local v1, "insets":Landroidx/core/view/WindowInsetsCompat;
    if-eqz v1, :cond_0

    .line 169
    invoke-direct {p0, v1}, Lcom/getcapacitor/plugin/SystemBars;->calcSafeAreaInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 170
    .local v2, "safeAreaInsets":Landroidx/core/graphics/Insets;
    iget v3, v2, Landroidx/core/graphics/Insets;->top:I

    iget v4, v2, Landroidx/core/graphics/Insets;->right:I

    iget v5, v2, Landroidx/core/graphics/Insets;->bottom:I

    iget v6, v2, Landroidx/core/graphics/Insets;->left:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/getcapacitor/plugin/SystemBars;->injectSafeAreaCSS(IIII)V

    .line 173
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "insets":Landroidx/core/view/WindowInsetsCompat;
    .end local v2    # "safeAreaInsets":Landroidx/core/graphics/Insets;
    :cond_0
    return-void
.end method

.method private initSystemBars()V
    .locals 6

    .line 92
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getConfig()Lcom/getcapacitor/PluginConfig;

    move-result-object v0

    const-string v1, "style"

    const-string v2, "DEFAULT"

    invoke-virtual {v0, v1, v2}, Lcom/getcapacitor/PluginConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "style":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getConfig()Lcom/getcapacitor/PluginConfig;

    move-result-object v1

    const-string v2, "hidden"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/getcapacitor/PluginConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 95
    .local v1, "hidden":Z
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getConfig()Lcom/getcapacitor/PluginConfig;

    move-result-object v2

    const-string v4, "insetsHandling"

    const-string v5, "css"

    invoke-virtual {v2, v4, v5}, Lcom/getcapacitor/PluginConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "insetsHandling":Ljava/lang/String;
    const-string v4, "disable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iput-boolean v3, p0, Lcom/getcapacitor/plugin/SystemBars;->insetHandlingEnabled:Z

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->initWindowInsetsListener()V

    .line 101
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->initSafeAreaCSSVariables()V

    .line 103
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v3

    new-instance v4, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, v0, v1}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda5;-><init>(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method private initWindowInsetsListener()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda1;-><init>(Lcom/getcapacitor/plugin/SystemBars;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 227
    return-void
.end method

.method private injectSafeAreaCSS(IIII)V
    .locals 8
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I

    .line 231
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 232
    .local v0, "density":F
    int-to-float v1, p1

    div-float v4, v1, v0

    .line 233
    .local v4, "topPx":F
    int-to-float v1, p2

    div-float v5, v1, v0

    .line 234
    .local v5, "rightPx":F
    int-to-float v1, p3

    div-float v6, v1, v0

    .line 235
    .local v6, "bottomPx":F
    int-to-float v1, p4

    div-float v7, v1, v0

    .line 238
    .local v7, "leftPx":F
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda4;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda4;-><init>(Lcom/getcapacitor/plugin/SystemBars;FFFF)V

    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method private synthetic lambda$hide$3(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "bar"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/getcapacitor/plugin/SystemBars;->setHidden(ZLjava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 137
    return-void
.end method

.method private synthetic lambda$initSystemBars$0(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "hidden"    # Z

    .line 104
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/getcapacitor/plugin/SystemBars;->setStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p2, v0}, Lcom/getcapacitor/plugin/SystemBars;->setHidden(ZLjava/lang/String;)V

    .line 106
    return-void
.end method

.method private synthetic lambda$initWindowInsetsListener$6(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    .line 177
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->getWebViewMajorVersion()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8c

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/getcapacitor/plugin/SystemBars;->hasViewportCover:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 179
    .local v0, "shouldPassthroughInsets":Z
    :goto_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    .line 180
    .local v1, "systemBarsInsets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 181
    .local v3, "imeInsets":Landroidx/core/graphics/Insets;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    invoke-virtual {p2, v4}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v4

    .line 183
    .local v4, "keyboardVisible":Z
    const/16 v5, 0x23

    if-eqz v0, :cond_3

    .line 185
    if-eqz v4, :cond_1

    iget v6, v3, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {p1, v2, v2, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/getcapacitor/plugin/SystemBars;->hasViewportCover:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/getcapacitor/plugin/SystemBars;->insetHandlingEnabled:Z

    if-eqz v2, :cond_2

    .line 188
    invoke-direct {p0, p2}, Lcom/getcapacitor/plugin/SystemBars;->calcSafeAreaInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object v2

    .line 189
    .local v2, "safeAreaInsets":Landroidx/core/graphics/Insets;
    iget v5, v2, Landroidx/core/graphics/Insets;->top:I

    iget v6, v2, Landroidx/core/graphics/Insets;->right:I

    iget v7, v2, Landroidx/core/graphics/Insets;->bottom:I

    iget v8, v2, Landroidx/core/graphics/Insets;->left:I

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/getcapacitor/plugin/SystemBars;->injectSafeAreaCSS(IIII)V

    .line 192
    .end local v2    # "safeAreaInsets":Landroidx/core/graphics/Insets;
    :cond_2
    new-instance v2, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v2, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 194
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v5

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v6

    or-int/2addr v5, v6

    iget v6, v1, Landroidx/core/graphics/Insets;->left:I

    iget v7, v1, Landroidx/core/graphics/Insets;->top:I

    iget v8, v1, Landroidx/core/graphics/Insets;->right:I

    .line 199
    invoke-direct {p0, v1, v4}, Lcom/getcapacitor/plugin/SystemBars;->getBottomInset(Landroidx/core/graphics/Insets;Z)I

    move-result v9

    .line 195
    invoke-static {v6, v7, v8, v9}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v6

    .line 193
    invoke-virtual {v2, v5, v6}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v2

    .line 202
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 192
    return-object v2

    .line 206
    :cond_3
    iget v6, v1, Landroidx/core/graphics/Insets;->left:I

    iget v7, v1, Landroidx/core/graphics/Insets;->top:I

    iget v8, v1, Landroidx/core/graphics/Insets;->right:I

    .line 210
    if-eqz v4, :cond_4

    iget v9, v3, Landroidx/core/graphics/Insets;->bottom:I

    goto :goto_2

    :cond_4
    iget v9, v1, Landroidx/core/graphics/Insets;->bottom:I

    .line 206
    :goto_2
    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    new-instance v6, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v6, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 217
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v7

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v2, v2, v2, v2}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 220
    .local v2, "newInsets":Landroidx/core/view/WindowInsetsCompat;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v5, :cond_5

    iget-boolean v5, p0, Lcom/getcapacitor/plugin/SystemBars;->hasViewportCover:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/getcapacitor/plugin/SystemBars;->insetHandlingEnabled:Z

    if-eqz v5, :cond_5

    .line 221
    invoke-direct {p0, v2}, Lcom/getcapacitor/plugin/SystemBars;->calcSafeAreaInsets(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/graphics/Insets;

    move-result-object v5

    .line 222
    .local v5, "safeAreaInsets":Landroidx/core/graphics/Insets;
    iget v6, v5, Landroidx/core/graphics/Insets;->top:I

    iget v7, v5, Landroidx/core/graphics/Insets;->right:I

    iget v8, v5, Landroidx/core/graphics/Insets;->bottom:I

    iget v9, v5, Landroidx/core/graphics/Insets;->left:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/getcapacitor/plugin/SystemBars;->injectSafeAreaCSS(IIII)V

    .line 225
    .end local v5    # "safeAreaInsets":Landroidx/core/graphics/Insets;
    :cond_5
    return-object v2
.end method

.method private synthetic lambda$injectSafeAreaCSS$7(FFFF)V
    .locals 5
    .param p1, "topPx"    # F
    .param p2, "rightPx"    # F
    .param p3, "bottomPx"    # F
    .param p4, "leftPx"    # F

    .line 239
    iget-object v0, p0, Lcom/getcapacitor/plugin/SystemBars;->bridge:Lcom/getcapacitor/Bridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/getcapacitor/plugin/SystemBars;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    float-to-int v1, p1

    .line 250
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    float-to-int v2, p2

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    float-to-int v3, p3

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    float-to-int v4, p4

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    .line 240
    const-string v2, "try {\n  document.documentElement.style.setProperty(\"--safe-area-inset-top\", \"%dpx\");\n  document.documentElement.style.setProperty(\"--safe-area-inset-right\", \"%dpx\");\n  document.documentElement.style.setProperty(\"--safe-area-inset-bottom\", \"%dpx\");\n  document.documentElement.style.setProperty(\"--safe-area-inset-left\", \"%dpx\");\n} catch(e) { console.error(\'Error injecting safe area CSS:\', e); }\n"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/getcapacitor/plugin/SystemBars;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v1}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 258
    .end local v0    # "script":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private synthetic lambda$onDOMReady$4(Ljava/lang/String;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/String;

    .line 149
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/getcapacitor/plugin/SystemBars;->hasViewportCover:Z

    .line 151
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestApplyInsets()V

    .line 152
    return-void
.end method

.method private synthetic lambda$onDOMReady$5()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/getcapacitor/plugin/SystemBars;->bridge:Lcom/getcapacitor/Bridge;

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda7;-><init>(Lcom/getcapacitor/plugin/SystemBars;)V

    const-string v2, "function capacitorSystemBarsCheckMetaViewport() {\n    const meta = document.querySelectorAll(\"meta[name=viewport]\");\n    if (meta.length == 0) {\n        return false;\n    }\n    // get the last found meta viewport tag\n    const metaContent = meta[meta.length - 1].content;\n    return metaContent.includes(\"viewport-fit=cover\");\n}\ncapacitorSystemBarsCheckMetaViewport();\n"

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 153
    return-void
.end method

.method private synthetic lambda$setStyle$1(Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "bar"    # Ljava/lang/String;
    .param p3, "call"    # Lcom/getcapacitor/PluginCall;

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/getcapacitor/plugin/SystemBars;->setStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 117
    return-void
.end method

.method private synthetic lambda$show$2(Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V
    .locals 1
    .param p1, "bar"    # Ljava/lang/String;
    .param p2, "call"    # Lcom/getcapacitor/PluginCall;

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/getcapacitor/plugin/SystemBars;->setHidden(ZLjava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 127
    return-void
.end method

.method private setHidden(ZLjava/lang/String;)V
    .locals 5
    .param p1, "hide"    # Z
    .param p2, "bar"    # Ljava/lang/String;

    .line 282
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 283
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    .line 285
    .local v1, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    const-string v2, "NavigationBar"

    const-string v3, "StatusBar"

    if-eqz p1, :cond_4

    .line 286
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    :cond_0
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->statusBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 289
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 290
    :cond_2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    .line 292
    :cond_3
    return-void

    .line 295
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 296
    :cond_5
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 298
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 299
    :cond_7
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->navigationBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 301
    :cond_8
    return-void
.end method

.method private setStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "style"    # Ljava/lang/String;
    .param p2, "bar"    # Ljava/lang/String;

    .line 262
    iput-object p1, p0, Lcom/getcapacitor/plugin/SystemBars;->currentStyle:Ljava/lang/String;

    .line 264
    const-string v0, "DEFAULT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->getStyleForTheme()Ljava/lang/String;

    move-result-object p1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 269
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v1

    .line 270
    .local v1, "windowInsetsControllerCompat":Landroidx/core/view/WindowInsetsControllerCompat;
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "DARK"

    if-nez v2, :cond_1

    const-string v2, "StatusBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightStatusBars(Z)V

    .line 274
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NavigationBar"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/core/view/WindowInsetsControllerCompat;->setAppearanceLightNavigationBars(Z)V

    .line 278
    :cond_4
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1010054

    invoke-virtual {p0, v3, v4}, Lcom/getcapacitor/plugin/SystemBars;->getThemeColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 279
    return-void
.end method


# virtual methods
.method public getThemeColor(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrRes"    # I

    .line 312
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 314
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 315
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 316
    iget v2, v0, Landroid/util/TypedValue;->data:I

    return v2
.end method

.method protected handleOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 86
    invoke-super {p0, p1}, Lcom/getcapacitor/Plugin;->handleOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/getcapacitor/plugin/SystemBars;->currentStyle:Ljava/lang/String;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/getcapacitor/plugin/SystemBars;->setStyle(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected handleOnStart()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->handleOnStart()V

    .line 73
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/plugin/SystemBars$1;

    invoke-direct {v1, p0}, Lcom/getcapacitor/plugin/SystemBars$1;-><init>(Lcom/getcapacitor/plugin/SystemBars;)V

    invoke-virtual {v0, v1}, Lcom/getcapacitor/Bridge;->addWebViewListener(Lcom/getcapacitor/WebViewListener;)V

    .line 82
    return-void
.end method

.method public hide(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 132
    const-string v0, "bar"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "bar":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p1}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda6;-><init>(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method

.method public load()V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/getcapacitor/Bridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "CapacitorSystemBarsAndroidInterface"

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0}, Lcom/getcapacitor/Plugin;->load()V

    .line 66
    invoke-direct {p0}, Lcom/getcapacitor/plugin/SystemBars;->initSystemBars()V

    .line 67
    return-void
.end method

.method public onDOMReady()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda2;-><init>(Lcom/getcapacitor/plugin/SystemBars;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    return-void
.end method

.method public setAnimation(Lcom/getcapacitor/PluginCall;)V
    .locals 0
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 142
    invoke-virtual {p1}, Lcom/getcapacitor/PluginCall;->resolve()V

    .line 143
    return-void
.end method

.method public setStyle(Lcom/getcapacitor/PluginCall;)V
    .locals 4
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 111
    const-string v0, "bar"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "bar":Ljava/lang/String;
    const-string v1, "style"

    const-string v2, "DEFAULT"

    invoke-virtual {p1, v1, v2}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "style":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v2

    new-instance v3, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda3;-><init>(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v2, v3}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public show(Lcom/getcapacitor/PluginCall;)V
    .locals 3
    .param p1, "call"    # Lcom/getcapacitor/PluginCall;
    .annotation runtime Lcom/getcapacitor/PluginMethod;
    .end annotation

    .line 122
    const-string v0, "bar"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/getcapacitor/PluginCall;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "bar":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/getcapacitor/plugin/SystemBars;->getBridge()Lcom/getcapacitor/Bridge;

    move-result-object v1

    new-instance v2, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/getcapacitor/plugin/SystemBars$$ExternalSyntheticLambda0;-><init>(Lcom/getcapacitor/plugin/SystemBars;Ljava/lang/String;Lcom/getcapacitor/PluginCall;)V

    invoke-virtual {v1, v2}, Lcom/getcapacitor/Bridge;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method
