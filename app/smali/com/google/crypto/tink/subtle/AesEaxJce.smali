.class public final Lcom/google/crypto/tink/subtle/AesEaxJce;
.super Ljava/lang/Object;
.source "AesEaxJce.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final BLOCK_SIZE_IN_BYTES:I = 0x10

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final TAG_SIZE_IN_BYTES:I = 0x10

.field private static final localCtrCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field private static final localEcbCipher:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:[B

.field private final ivSizeInBytes:I

.field private final keySpec:Ljavax/crypto/spec/SecretKeySpec;

.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 52
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 55
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    .line 67
    new-instance v0, Lcom/google/crypto/tink/subtle/AesEaxJce$2;

    invoke-direct {v0}, Lcom/google/crypto/tink/subtle/AesEaxJce$2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4
    .param p1, "key"    # [B
    .param p2, "ivSizeInBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "ivSizeInBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    const/16 v0, 0xc

    const/16 v1, 0x10

    if-eq p2, v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IV size should be either 12 or 16 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    :goto_0
    iput p2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    .line 99
    array-length v0, p1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateAesKeySize(I)V

    .line 100
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    .line 101
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 102
    .local v0, "ecb":Ljavax/crypto/Cipher;
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 103
    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 104
    .local v1, "block":[B
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    .line 105
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/AesEaxJce;->multiplyByX([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    .line 106
    return-void

    .line 92
    .end local v0    # "ecb":Ljavax/crypto/Cipher;
    .end local v1    # "block":[B
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Can not use AES-EAX in FIPS-mode."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static multiplyByX([B)[B
    .locals 4
    .param p0, "block"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "block"
        }
    .end annotation

    .line 125
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 126
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    .line 128
    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x7

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_0
    aget-byte v1, p0, v2

    shl-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    aget-byte v3, p0, v3

    shr-int/lit8 v3, v3, 0x7

    and-int/lit16 v3, v3, 0x87

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 133
    return-object v0
.end method

.method private omac(Ljavax/crypto/Cipher;I[BII)[B
    .locals 6
    .param p1, "ecb"    # Ljavax/crypto/Cipher;
    .param p2, "tag"    # I
    .param p3, "data"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "ecb",
            "tag",
            "data",
            "offset",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 171
    if-ltz p5, :cond_4

    .line 172
    if-ltz p2, :cond_3

    const/4 v0, 0x3

    if-gt p2, v0, :cond_3

    .line 173
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 174
    .local v1, "block":[B
    const/16 v2, 0xf

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    .line 175
    if-nez p5, :cond_0

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 179
    const/4 v2, 0x0

    .line 180
    .local v2, "position":I
    :goto_0
    sub-int v3, p5, v2

    if-le v3, v0, :cond_2

    .line 181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 182
    aget-byte v4, v1, v3

    add-int v5, p4, v2

    add-int/2addr v5, v3

    aget-byte v5, p3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 185
    add-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 187
    :cond_2
    add-int v0, p4, v2

    add-int v3, p4, p5

    invoke-static {p3, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->pad([B)[B

    move-result-object v0

    .line 188
    .local v0, "padded":[B
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v1

    .line 189
    invoke-virtual {p1, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3

    .line 172
    .end local v0    # "padded":[B
    .end local v1    # "block":[B
    .end local v2    # "position":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 171
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private pad([B)[B
    .locals 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 145
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->b:[B

    invoke-static {p1, v0}, Lcom/google/crypto/tink/subtle/AesEaxJce;->xor([B[B)[B

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->p:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 149
    .local v0, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 150
    aget-byte v2, v0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "i":I
    :cond_1
    array-length v1, p1

    array-length v2, p1

    aget-byte v2, v0, v2

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 153
    return-object v0
.end method

.method private static xor([B[B)[B
    .locals 5
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 110
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 111
    array-length v0, p0

    .line 112
    .local v0, "len":I
    new-array v1, v0, [B

    .line 113
    .local v1, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 114
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 110
    .end local v0    # "len":I
    .end local v1    # "res":[B
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 15
    .param p1, "ciphertext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 227
    move-object/from16 v3, p1

    array-length v1, v3

    iget v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    sub-int/2addr v1, v2

    const/16 v6, 0x10

    add-int/lit8 v7, v1, -0x10

    .line 228
    .local v7, "plaintextLength":I
    if-ltz v7, :cond_3

    .line 231
    sget-object v1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 232
    .local v1, "ecb":Ljavax/crypto/Cipher;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v8, 0x1

    invoke-virtual {v1, v8, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 233
    const/4 v4, 0x0

    iget v5, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v9

    .line 234
    .local v9, "n":[B
    move-object/from16 v0, p2

    .line 235
    .local v0, "aad":[B
    if-nez v0, :cond_0

    .line 236
    const/4 v2, 0x0

    new-array v0, v2, [B

    move-object v3, v0

    goto :goto_0

    .line 235
    :cond_0
    move-object v3, v0

    .line 238
    .end local v0    # "aad":[B
    .local v3, "aad":[B
    :goto_0
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v10

    .line 239
    move-object v11, v3

    .end local v3    # "aad":[B
    .local v10, "h":[B
    .local v11, "aad":[B
    const/4 v2, 0x2

    iget v4, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    move-object/from16 v3, p1

    move v5, v7

    .end local v7    # "plaintextLength":I
    .local v5, "plaintextLength":I
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v2

    .line 240
    .local v2, "t":[B
    const/4 v4, 0x0

    .line 241
    .local v4, "res":B
    array-length v7, v3

    sub-int/2addr v7, v6

    .line 242
    .local v7, "offset":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_1

    .line 243
    add-int v13, v7, v12

    aget-byte v13, v3, v13

    aget-byte v14, v10, v12

    xor-int/2addr v13, v14

    aget-byte v14, v9, v12

    xor-int/2addr v13, v14

    aget-byte v14, v2, v12

    xor-int/2addr v13, v14

    or-int/2addr v13, v4

    int-to-byte v4, v13

    .line 242
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 245
    .end local v12    # "i":I
    :cond_1
    if-nez v4, :cond_2

    .line 248
    sget-object v6, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/crypto/Cipher;

    .line 249
    .local v6, "ctr":Ljavax/crypto/Cipher;
    iget-object v12, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v13, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v13, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v6, v8, v12, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 250
    iget v8, p0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    invoke-virtual {v6, v3, v8, v5}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v8

    return-object v8

    .line 246
    .end local v6    # "ctr":Ljavax/crypto/Cipher;
    :cond_2
    new-instance v6, Ljavax/crypto/AEADBadTagException;

    const-string v8, "tag mismatch"

    invoke-direct {v6, v8}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 229
    .end local v1    # "ecb":Ljavax/crypto/Cipher;
    .end local v2    # "t":[B
    .end local v4    # "res":B
    .end local v5    # "plaintextLength":I
    .end local v9    # "n":[B
    .end local v10    # "h":[B
    .end local v11    # "aad":[B
    .local v7, "plaintextLength":I
    :cond_3
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "ciphertext too short"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encrypt([B[B)[B
    .locals 16
    .param p1, "plaintext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    array-length v1, v6

    const v2, 0x7fffffff

    iget v3, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    sub-int/2addr v2, v3

    const/16 v7, 0x10

    sub-int/2addr v2, v7

    if-gt v1, v2, :cond_2

    .line 200
    iget v1, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    array-length v2, v6

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    new-array v8, v1, [B

    .line 201
    .local v8, "ciphertext":[B
    iget v1, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v3

    .line 202
    .local v3, "iv":[B
    iget v1, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const/4 v9, 0x0

    invoke-static {v3, v9, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    sget-object v1, Lcom/google/crypto/tink/subtle/AesEaxJce;->localEcbCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 205
    .local v1, "ecb":Ljavax/crypto/Cipher;
    iget-object v2, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v10, 0x1

    invoke-virtual {v1, v10, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 206
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v11

    .line 207
    move-object v12, v3

    .end local v3    # "iv":[B
    .local v11, "n":[B
    .local v12, "iv":[B
    move-object/from16 v0, p2

    .line 208
    .local v0, "aad":[B
    if-nez v0, :cond_0

    .line 209
    new-array v0, v9, [B

    move-object v3, v0

    goto :goto_0

    .line 208
    :cond_0
    move-object v3, v0

    .line 211
    .end local v0    # "aad":[B
    .local v3, "aad":[B
    :goto_0
    const/4 v4, 0x0

    array-length v5, v3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v9

    .line 212
    move-object v13, v0

    move-object v14, v1

    move-object v15, v3

    .end local v1    # "ecb":Ljavax/crypto/Cipher;
    .end local v3    # "aad":[B
    .local v9, "h":[B
    .local v14, "ecb":Ljavax/crypto/Cipher;
    .local v15, "aad":[B
    sget-object v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->localCtrCipher:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 213
    .local v0, "ctr":Ljavax/crypto/Cipher;
    iget-object v1, v13, Lcom/google/crypto/tink/subtle/AesEaxJce;->keySpec:Ljavax/crypto/spec/SecretKeySpec;

    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v11}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v10, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 214
    array-length v3, v6

    iget v5, v13, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    const/4 v2, 0x0

    move-object v1, v6

    move-object v4, v8

    .end local v8    # "ciphertext":[B
    .local v4, "ciphertext":[B
    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    .line 215
    move-object v8, v0

    move-object v3, v4

    .end local v0    # "ctr":Ljavax/crypto/Cipher;
    .end local v4    # "ciphertext":[B
    .local v3, "ciphertext":[B
    .local v8, "ctr":Ljavax/crypto/Cipher;
    iget v4, v13, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    array-length v5, v6

    const/4 v2, 0x2

    move-object v0, v13

    move-object v1, v14

    .end local v14    # "ecb":Ljavax/crypto/Cipher;
    .restart local v1    # "ecb":Ljavax/crypto/Cipher;
    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/subtle/AesEaxJce;->omac(Ljavax/crypto/Cipher;I[BII)[B

    move-result-object v2

    .line 216
    .local v2, "t":[B
    array-length v4, v6

    iget v5, v0, Lcom/google/crypto/tink/subtle/AesEaxJce;->ivSizeInBytes:I

    add-int/2addr v4, v5

    .line 217
    .local v4, "offset":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 218
    add-int v10, v4, v5

    aget-byte v13, v9, v5

    aget-byte v14, v11, v5

    xor-int/2addr v13, v14

    aget-byte v14, v2, v5

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v10

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 220
    .end local v5    # "i":I
    :cond_1
    return-object v3

    .line 198
    .end local v1    # "ecb":Ljavax/crypto/Cipher;
    .end local v2    # "t":[B
    .end local v3    # "ciphertext":[B
    .end local v4    # "offset":I
    .end local v8    # "ctr":Ljavax/crypto/Cipher;
    .end local v9    # "h":[B
    .end local v11    # "n":[B
    .end local v12    # "iv":[B
    .end local v15    # "aad":[B
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "plaintext too long"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
