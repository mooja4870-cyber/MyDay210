.class final Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;
.super Ljava/lang/Object;
.source "HkdfHpkeKdf.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final macAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "macAlgorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "macAlgorithm"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private expand([B[BI)[B
    .locals 7
    .param p1, "prk"    # [B
    .param p2, "info"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "prk",
            "info",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 57
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v1

    mul-int/lit16 v1, v1, 0xff

    if-gt p3, v1, :cond_1

    .line 60
    new-array v1, p3, [B

    .line 61
    .local v1, "result":[B
    const/4 v2, 0x1

    .line 62
    .local v2, "ctr":I
    const/4 v3, 0x0

    .line 63
    .local v3, "pos":I
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v4, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 64
    const/4 v4, 0x0

    new-array v5, v4, [B

    .line 66
    .local v5, "digest":[B
    :goto_0
    invoke-virtual {v0, v5}, Ljavax/crypto/Mac;->update([B)V

    .line 67
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 68
    int-to-byte v6, v2

    invoke-virtual {v0, v6}, Ljavax/crypto/Mac;->update(B)V

    .line 69
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    .line 70
    array-length v6, v5

    add-int/2addr v6, v3

    if-ge v6, p3, :cond_0

    .line 71
    array-length v6, v5

    invoke-static {v5, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    array-length v6, v5

    add-int/2addr v3, v6

    .line 73
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    sub-int v6, p3, v3

    invoke-static {v5, v4, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    nop

    .line 79
    return-object v1

    .line 58
    .end local v1    # "result":[B
    .end local v2    # "ctr":I
    .end local v3    # "pos":I
    .end local v5    # "digest":[B
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "size too large"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private extract([B[B)[B
    .locals 4
    .param p1, "ikm"    # [B
    .param p2, "salt"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ikm",
            "salt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MAC:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 40
    .local v0, "mac":Ljavax/crypto/Mac;
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 47
    :goto_1
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public extractAndExpand([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B
    .locals 2
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .param p3, "ikmLabel"    # Ljava/lang/String;
    .param p4, "info"    # [B
    .param p5, "infoLabel"    # Ljava/lang/String;
    .param p6, "suiteId"    # [B
    .param p7, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm",
            "ikmLabel",
            "info",
            "infoLabel",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    invoke-static {p3, p2, p6}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelIkm(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extract([B[B)[B

    move-result-object v0

    .line 105
    .local v0, "prk":[B
    invoke-static {p5, p4, p6, p7}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelInfo(Ljava/lang/String;[B[BI)[B

    move-result-object v1

    invoke-direct {p0, v0, v1, p7}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->expand([B[BI)[B

    move-result-object v1

    return-object v1
.end method

.method public getKdfId()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "HmacSha512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "HmacSha384"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "HmacSha256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KDF ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA512_KDF_ID:[B

    return-object v0

    .line 114
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA384_KDF_ID:[B

    return-object v0

    .line 112
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3aaea10e -> :sswitch_2
        0x3aaea52a -> :sswitch_1
        0x3aaeabd1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getMacLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->macAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v0

    return v0
.end method

.method public labeledExpand([B[BLjava/lang/String;[BI)[B
    .locals 1
    .param p1, "prk"    # [B
    .param p2, "info"    # [B
    .param p3, "infoLabel"    # Ljava/lang/String;
    .param p4, "suiteId"    # [B
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prk",
            "info",
            "infoLabel",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    invoke-static {p3, p2, p4, p5}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelInfo(Ljava/lang/String;[B[BI)[B

    move-result-object v0

    invoke-direct {p0, p1, v0, p5}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->expand([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public labeledExtract([B[BLjava/lang/String;[B)[B
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .param p3, "ikmLabel"    # Ljava/lang/String;
    .param p4, "suiteId"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm",
            "ikmLabel",
            "suiteId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    invoke-static {p3, p2, p4}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->labelIkm(Ljava/lang/String;[B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extract([B[B)[B

    move-result-object v0

    return-object v0
.end method
