.class final Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;
.super Ljava/lang/Object;
.source "NistCurvesHpkeKem.java"

# interfaces
.implements Lcom/google/crypto/tink/hybrid/internal/HpkeKem;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

.field private final hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)V
    .locals 0
    .param p1, "hkdf"    # Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;
    .param p2, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hkdf",
            "curve"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    .line 50
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 51
    return-void
.end method

.method private deriveKemSharedSecret([B[B[B)[B
    .locals 9
    .param p1, "dhSharedSecret"    # [B
    .param p2, "senderPublicKey"    # [B
    .param p3, "recipientPublicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dhSharedSecret",
            "senderPublicKey",
            "recipientPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 56
    filled-new-array {p2, p3}, [[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v5

    .line 57
    .local v5, "kemContext":[B
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->getKemId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->kemSuiteId([B)[B

    move-result-object v7

    .line 58
    .local v7, "kemSuiteID":[B
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->hkdf:Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    .line 65
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->getMacLength()I

    move-result v8

    .line 58
    const/4 v2, 0x0

    const-string v4, "eae_prk"

    const-string v6, "shared_secret"

    move-object v3, p1

    .end local p1    # "dhSharedSecret":[B
    .local v3, "dhSharedSecret":[B
    invoke-virtual/range {v1 .. v8}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;->extractAndExpand([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method static fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;
    .locals 3
    .param p0, "curve"    # Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curve"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$CurveType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 45
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid curve type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v2, "HmacSha512"

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;-><init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)V

    return-object v0

    .line 41
    :pswitch_1
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v2, "HmacSha384"

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;-><init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)V

    return-object v0

    .line 39
    :pswitch_2
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    new-instance v1, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v2, "HmacSha256"

    invoke-direct {v1, v2}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;-><init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decapsulate([BLcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;)[B
    .locals 4
    .param p1, "encapsulatedKey"    # [B
    .param p2, "recipientPrivateKey"    # Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encapsulatedKey",
            "recipientPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 97
    invoke-interface {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPrivate()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v1

    .line 96
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPrivateKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    .line 98
    .local v0, "privateKey":Ljava/security/interfaces/ECPrivateKey;
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 99
    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPublicKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    .line 100
    .local v1, "publicKey":Ljava/security/interfaces/ECPublicKey;
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v2

    .line 101
    .local v2, "dhSharedSecret":[B
    nop

    .line 102
    invoke-interface {p2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemPrivateKey;->getSerializedPublic()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v3

    .line 101
    invoke-direct {p0, v2, p1, v3}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->deriveKemSharedSecret([B[B[B)[B

    move-result-object v3

    return-object v3
.end method

.method public encapsulate([B)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .locals 2
    .param p1, "recipientPublicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientPublicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/KeyPair;

    move-result-object v0

    .line 89
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->encapsulate([BLjava/security/KeyPair;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    move-result-object v1

    return-object v1
.end method

.method encapsulate([BLjava/security/KeyPair;)Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;
    .locals 5
    .param p1, "recipientPublicKey"    # [B
    .param p2, "senderKeyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientPublicKey",
            "senderKeyPair"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v1, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 72
    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPublicKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v0

    .line 73
    .local v0, "recipientECPublicKey":Ljava/security/interfaces/ECPublicKey;
    nop

    .line 75
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    .line 74
    invoke-static {v1, v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->computeSharedSecret(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v1

    .line 76
    .local v1, "dhSharedSecret":[B
    iget-object v2, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    sget-object v3, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 80
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v4}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v4

    .line 77
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointEncode(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B

    move-result-object v2

    .line 81
    .local v2, "senderPublicKey":[B
    nop

    .line 82
    invoke-direct {p0, v1, v2, p1}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->deriveKemSharedSecret([B[B[B)[B

    move-result-object v3

    .line 83
    .local v3, "kemSharedSecret":[B
    new-instance v4, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;

    invoke-direct {v4, v3, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeKemEncapOutput;-><init>([B[B)V

    return-object v4
.end method

.method public getKemId()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem$1;->$SwitchMap$com$google$crypto$tink$subtle$EllipticCurves$CurveType:[I

    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->curve:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-virtual {v1}, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Could not determine HPKE KEM ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P521_HKDF_SHA512_KEM_ID:[B

    return-object v0

    .line 111
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P384_HKDF_SHA384_KEM_ID:[B

    return-object v0

    .line 109
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P256_HKDF_SHA256_KEM_ID:[B

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
