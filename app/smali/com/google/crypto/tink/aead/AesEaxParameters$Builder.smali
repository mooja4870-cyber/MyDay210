.class public final Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;
.super Ljava/lang/Object;
.source "AesEaxParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesEaxParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ivSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private keySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tagSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    .line 56
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 57
    sget-object v0, Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesEaxParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/aead/AesEaxParameters$1;

    .line 53
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesEaxParameters;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 124
    new-instance v1, Lcom/google/crypto/tink/aead/AesEaxParameters;

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/aead/AesEaxParameters;-><init>(IIILcom/google/crypto/tink/aead/AesEaxParameters$Variant;Lcom/google/crypto/tink/aead/AesEaxParameters$1;)V

    return-object v1

    .line 121
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "IV size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;
    .locals 3
    .param p1, "ivSizeBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ivSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 81
    const-string v2, "Invalid IV size in bytes %d; acceptable values have 12 or 16 bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    .line 85
    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;
    .locals 3
    .param p1, "keySizeBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 67
    const/16 v0, 0x10

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 69
    const-string v2, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 74
    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;
    .locals 3
    .param p1, "tagSizeBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 94
    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    .line 99
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 100
    return-object p0

    .line 95
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 97
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 96
    const-string v2, "Invalid tag size in bytes %d; value must be at most 16 bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;
    .locals 0
    .param p1, "variant"    # Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 105
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    .line 106
    return-object p0
.end method
