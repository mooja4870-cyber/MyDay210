.class public final Lcom/google/crypto/tink/internal/LegacyProtoKey;
.super Lcom/google/crypto/tink/Key;
.source "LegacyProtoKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;
    }
.end annotation


# instance fields
.field private final serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V
    .locals 0
    .param p1, "serialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .param p2, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Lcom/google/crypto/tink/Key;-><init>()V

    .line 100
    invoke-static {p1, p2}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->throwIfMissingAccess(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    .line 101
    iput-object p1, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 102
    return-void
.end method

.method private static throwIfMissingAccess(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V
    .locals 2
    .param p0, "protoKeySerialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .param p1, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "protoKeySerialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    sget-object v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$KeyData$KeyMaterialType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    .line 88
    nop

    .line 91
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 4
    .param p1, "key"    # Lcom/google/crypto/tink/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 118
    instance-of v0, p1, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 121
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 123
    .local v0, "other":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    return v1

    .line 126
    :cond_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    return v1

    .line 129
    :cond_2
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 130
    return v1

    .line 132
    :cond_3
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    return v1

    .line 135
    :cond_4
    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v1

    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 4

    .line 163
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 164
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/internal/LegacyProtoKey$1;)V

    .line 163
    return-object v0
.end method

.method public getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 1
    .param p1, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->throwIfMissingAccess(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V

    .line 152
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey;->serialization:Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    return-object v0
.end method
