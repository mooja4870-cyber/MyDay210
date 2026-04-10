.class public final Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;
.super Ljava/lang/Object;
.source "InsecureNonceAesGcmJce.java"


# static fields
.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field public static final IV_SIZE_IN_BYTES:I = 0xc

.field public static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final keySpec:Ljavax/crypto/SecretKey;

.field private final prependIv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 44
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "key"    # [B
    .param p2, "prependIv"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "prependIv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 66
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    .line 67
    iput-boolean p2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    .line 68
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getParams([B)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "iv"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 146
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0
.end method

.method private static getParams([BII)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "buf",
            "offset",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/subtle/SubtleUtil;->androidApiLevel()I

    move-result v0

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    .line 157
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, p0, p1, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p0, p1, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 7
    .param p1, "iv"    # [B
    .param p2, "ciphertext"    # [B
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 122
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    .line 126
    iget-boolean v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    .line 127
    .local v0, "minimumCiphertextLength":I
    :goto_0
    array-length v2, p2

    if-lt v2, v0, :cond_6

    .line 130
    iget-boolean v2, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 131
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {p2, v3, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 132
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "iv does not match prepended iv"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    .line 136
    .local v2, "params":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v4, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v4, v5, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 137
    if-eqz p3, :cond_3

    array-length v4, p3

    if-eqz v4, :cond_3

    .line 138
    sget-object v4, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher;

    invoke-virtual {v4, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 140
    :cond_3
    iget-boolean v4, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v4, :cond_4

    move v3, v1

    .line 141
    .local v3, "ciphertextInputOffset":I
    :cond_4
    iget-boolean v4, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v4, :cond_5

    array-length v4, p2

    sub-int/2addr v4, v1

    goto :goto_2

    :cond_5
    array-length v4, p2

    .line 142
    .local v4, "ciphertextLength":I
    :goto_2
    sget-object v1, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    invoke-virtual {v1, p2, v3, v4}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    return-object v1

    .line 128
    .end local v2    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v3    # "ciphertextInputOffset":I
    .end local v4    # "ciphertextLength":I
    :cond_6
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "ciphertext too short"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    .end local v0    # "minimumCiphertextLength":I
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "iv is wrong size"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B[B[B)[B
    .locals 10
    .param p1, "iv"    # [B
    .param p2, "plaintext"    # [B
    .param p3, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "iv",
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    array-length v0, p1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_6

    .line 80
    array-length v0, p2

    const v2, 0x7fffffe3

    if-gt v0, v2, :cond_5

    .line 84
    iget-boolean v0, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    .line 85
    array-length v0, p2

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    goto :goto_0

    .line 86
    :cond_0
    array-length v0, p2

    add-int/2addr v0, v2

    :goto_0
    nop

    .line 87
    .local v0, "ciphertextLength":I
    new-array v7, v0, [B

    .line 88
    .local v7, "ciphertext":[B
    iget-boolean v3, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 89
    invoke-static {p1, v4, v7, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    :cond_1
    invoke-static {p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->getParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v9

    .line 93
    .local v9, "params":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v3, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->keySpec:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v5, v6, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 94
    if-eqz p3, :cond_2

    array-length v3, p3

    if-eqz v3, :cond_2

    .line 95
    sget-object v3, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/crypto/Cipher;

    invoke-virtual {v3, p3}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 97
    :cond_2
    iget-boolean v3, p0, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->prependIv:Z

    if-eqz v3, :cond_3

    move v8, v1

    goto :goto_1

    :cond_3
    move v8, v4

    .line 98
    .local v8, "ciphertextOutputOffset":I
    :goto_1
    sget-object v1, Lcom/google/crypto/tink/aead/internal/InsecureNonceAesGcmJce;->localCipher:Ljava/lang/ThreadLocal;

    .line 100
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljavax/crypto/Cipher;

    array-length v6, p2

    .line 101
    const/4 v5, 0x0

    move-object v4, p2

    .end local p2    # "plaintext":[B
    .local v4, "plaintext":[B
    invoke-virtual/range {v3 .. v8}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p2

    .line 105
    .local p2, "written":I
    array-length v1, v4

    add-int/2addr v1, v2

    if-ne p2, v1, :cond_4

    .line 113
    return-object v7

    .line 107
    :cond_4
    array-length v1, v4

    sub-int v1, p2, v1

    .line 108
    .local v1, "actualTagSize":I
    new-instance v3, Ljava/security/GeneralSecurityException;

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 109
    const-string v5, "encryption failed; GCM tag must be %s bytes, but got only %s bytes"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    .end local v0    # "ciphertextLength":I
    .end local v1    # "actualTagSize":I
    .end local v4    # "plaintext":[B
    .end local v7    # "ciphertext":[B
    .end local v8    # "ciphertextOutputOffset":I
    .end local v9    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .local p2, "plaintext":[B
    :cond_5
    move-object v4, p2

    .end local p2    # "plaintext":[B
    .restart local v4    # "plaintext":[B
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "plaintext too long"

    invoke-direct {p2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 77
    .end local v4    # "plaintext":[B
    .restart local p2    # "plaintext":[B
    :cond_6
    move-object v4, p2

    .end local p2    # "plaintext":[B
    .restart local v4    # "plaintext":[B
    new-instance p2, Ljava/security/GeneralSecurityException;

    const-string v0, "iv is wrong size"

    invoke-direct {p2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
