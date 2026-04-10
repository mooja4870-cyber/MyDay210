.class public final Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;
.super Ljava/lang/Object;
.source "RsaSsaPssSignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final RAW_RSA_ALGORITHM:Ljava/lang/String; = "RSA/ECB/NOPADDING"


# instance fields
.field private final mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field private final privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field private final saltLength:I

.field private final sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)V
    .locals 4
    .param p1, "priv"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .param p2, "sigHash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p3, "mgf1Hash"    # Lcom/google/crypto/tink/subtle/Enums$HashType;
    .param p4, "saltLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "priv",
            "sigHash",
            "mgf1Hash",
            "saltLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 60
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 61
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 63
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 64
    .local v0, "kf":Ljava/security/KeyFactory;
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 66
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    iput-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 67
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 68
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 69
    iput p4, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    .line 70
    return-void

    .line 55
    .end local v0    # "kf":Ljava/security/KeyFactory;
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private emsaPssEncode([BI)[B
    .locals 21
    .param p1, "m"    # [B
    .param p2, "emBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "emBits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 104
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v3, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 105
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toDigestAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 106
    .local v2, "digest":Ljava/security/MessageDigest;
    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 109
    .local v4, "mHash":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v5

    .line 110
    .local v5, "hLen":I
    add-int/lit8 v6, v1, -0x1

    const/16 v7, 0x8

    div-int/2addr v6, v7

    const/4 v8, 0x1

    add-int/2addr v6, v8

    .line 111
    .local v6, "emLen":I
    iget v9, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    add-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x2

    if-lt v6, v9, :cond_2

    .line 116
    iget v9, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    invoke-static {v9}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v9

    .line 119
    .local v9, "salt":[B
    add-int/lit8 v10, v5, 0x8

    iget v11, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    add-int/2addr v10, v11

    new-array v10, v10, [B

    .line 120
    .local v10, "mPrime":[B
    const/4 v11, 0x0

    invoke-static {v4, v11, v10, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/lit8 v7, v5, 0x8

    array-length v12, v9

    invoke-static {v9, v11, v10, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-virtual {v2, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v7

    .line 127
    .local v7, "h":[B
    sub-int v12, v6, v5

    sub-int/2addr v12, v8

    new-array v12, v12, [B

    .line 128
    .local v12, "db":[B
    iget v13, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    sub-int v13, v6, v13

    sub-int/2addr v13, v5

    add-int/lit8 v13, v13, -0x2

    aput-byte v8, v12, v13

    .line 129
    iget v13, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->saltLength:I

    sub-int v13, v6, v13

    sub-int/2addr v13, v5

    sub-int/2addr v13, v8

    array-length v14, v9

    invoke-static {v9, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    sub-int v13, v6, v5

    sub-int/2addr v13, v8

    iget-object v14, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-static {v7, v13, v14}, Lcom/google/crypto/tink/subtle/SubtleUtil;->mgf1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object v13

    .line 135
    .local v13, "dbMask":[B
    sub-int v14, v6, v5

    sub-int/2addr v14, v8

    new-array v14, v14, [B

    .line 136
    .local v14, "maskedDb":[B
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v16, v8

    array-length v8, v14

    if-ge v15, v8, :cond_0

    .line 137
    aget-byte v8, v12, v15

    aget-byte v17, v13, v15

    xor-int v8, v8, v17

    int-to-byte v8, v8

    aput-byte v8, v14, v15

    .line 136
    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v16

    goto :goto_0

    .line 141
    .end local v15    # "i":I
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v17, v12

    .end local v12    # "db":[B
    .local v17, "db":[B
    int-to-long v11, v8

    move-object/from16 v18, v2

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .local v18, "digest":Ljava/security/MessageDigest;
    int-to-long v2, v6

    const-wide/16 v19, 0x8

    mul-long v2, v2, v19

    move-wide/from16 v19, v2

    int-to-long v2, v1

    sub-long v2, v19, v2

    cmp-long v2, v11, v2

    if-gez v2, :cond_1

    .line 142
    div-int/lit8 v2, v8, 0x8

    .line 143
    .local v2, "bytePos":I
    rem-int/lit8 v3, v8, 0x8

    rsub-int/lit8 v3, v3, 0x7

    .line 144
    .local v3, "bitPos":I
    aget-byte v11, v14, v2

    shl-int v12, v16, v3

    not-int v12, v12

    and-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v14, v2

    .line 141
    .end local v2    # "bytePos":I
    .end local v3    # "bitPos":I
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p1

    move-object/from16 v12, v17

    move-object/from16 v2, v18

    const/4 v11, 0x0

    goto :goto_1

    .line 148
    .end local v8    # "i":I
    :cond_1
    array-length v2, v14

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [B

    .line 149
    .local v2, "em":[B
    array-length v3, v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    array-length v3, v14

    array-length v8, v7

    invoke-static {v7, v15, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    array-length v3, v14

    add-int/2addr v3, v5

    const/16 v8, -0x44

    aput-byte v8, v2, v3

    .line 152
    return-object v2

    .line 112
    .end local v7    # "h":[B
    .end local v9    # "salt":[B
    .end local v10    # "mPrime":[B
    .end local v13    # "dbMask":[B
    .end local v14    # "maskedDb":[B
    .end local v17    # "db":[B
    .end local v18    # "digest":Ljava/security/MessageDigest;
    .local v2, "digest":Ljava/security/MessageDigest;
    :cond_2
    move-object/from16 v18, v2

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v18    # "digest":Ljava/security/MessageDigest;
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "encoding error"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private rsasp1([B)[B
    .locals 7
    .param p1, "m"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA/ECB/NOPADDING"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 83
    .local v0, "decryptCipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 84
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 87
    .local v2, "c":[B
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 88
    .local v1, "encryptCipher":Ljavax/crypto/Cipher;
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 90
    .local v3, "m0":[B
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-direct {v6, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    return-object v2

    .line 91
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Security bug: RSA signature computation error"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public sign([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 77
    .local v0, "modBits":I
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, p1, v1}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->emsaPssEncode([BI)[B

    move-result-object v1

    .line 78
    .local v1, "em":[B
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->rsasp1([B)[B

    move-result-object v2

    return-object v2
.end method
