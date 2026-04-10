.class public final Lcom/google/crypto/tink/mac/HmacParameters$Builder;
.super Ljava/lang/Object;
.source "HmacParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

.field private keySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tagSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 85
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 86
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 88
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/mac/HmacParameters$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/mac/HmacParameters$1;

    .line 82
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;-><init>()V

    return-void
.end method

.method private static validateTagSizeBytes(ILcom/google/crypto/tink/mac/HmacParameters$HashType;)V
    .locals 3
    .param p0, "tagSizeBytes"    # I
    .param p1, "hashType"    # Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagSizeBytes",
            "hashType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    const/16 v0, 0xa

    if-lt p0, v0, :cond_a

    .line 120
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA1:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_1

    .line 121
    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 126
    return-void

    .line 122
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 123
    const-string v2, "Invalid tag size in bytes %d; can be at most 20 bytes for SHA1"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA224:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_3

    .line 129
    const/16 v0, 0x1c

    if-gt p0, v0, :cond_2

    .line 135
    return-void

    .line 130
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 133
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 131
    const-string v2, "Invalid tag size in bytes %d; can be at most 28 bytes for SHA224"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_3
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_5

    .line 138
    const/16 v0, 0x20

    if-gt p0, v0, :cond_4

    .line 144
    return-void

    .line 139
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 140
    const-string v2, "Invalid tag size in bytes %d; can be at most 32 bytes for SHA256"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_5
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA384:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_7

    .line 147
    const/16 v0, 0x30

    if-gt p0, v0, :cond_6

    .line 153
    return-void

    .line 148
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 149
    const-string v2, "Invalid tag size in bytes %d; can be at most 48 bytes for SHA384"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-ne p1, v0, :cond_9

    .line 156
    const/16 v0, 0x40

    if-gt p0, v0, :cond_8

    .line 162
    return-void

    .line 157
    :cond_8
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 160
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 158
    const-string v2, "Invalid tag size in bytes %d; can be at most 64 bytes for SHA512"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "unknown hash type; must be SHA256, SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_a
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Invalid tag size in bytes %d; must be at least 10 bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/HmacParameters;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->validateTagSizeBytes(ILcom/google/crypto/tink/mac/HmacParameters$HashType;)V

    .line 185
    new-instance v2, Lcom/google/crypto/tink/mac/HmacParameters;

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    iget-object v6, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/mac/HmacParameters;-><init>(IILcom/google/crypto/tink/mac/HmacParameters$Variant;Lcom/google/crypto/tink/mac/HmacParameters$HashType;Lcom/google/crypto/tink/mac/HmacParameters$1;)V

    return-object v2

    .line 181
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 182
    const-string v2, "Invalid key size in bytes %d; must be at least 16 bytes"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .locals 0
    .param p1, "hashType"    # Lcom/google/crypto/tink/mac/HmacParameters$HashType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->hashType:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 111
    return-object p0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .locals 1
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

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 93
    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .locals 1
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

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 99
    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;
    .locals 0
    .param p1, "variant"    # Lcom/google/crypto/tink/mac/HmacParameters$Variant;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->variant:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 105
    return-object p0
.end method
