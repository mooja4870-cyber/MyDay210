.class public final Lcom/google/crypto/tink/internal/LegacyProtoParameters;
.super Lcom/google/crypto/tink/Parameters;
.source "LegacyProtoParameters.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)V
    .locals 0
    .param p1, "serialization"    # Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/google/crypto/tink/Parameters;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 32
    return-void
.end method

.method private static outputPrefixToString(Lcom/google/crypto/tink/proto/OutputPrefixType;)Ljava/lang/String;
    .locals 2
    .param p0, "outputPrefixType"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPrefixType"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/google/crypto/tink/internal/LegacyProtoParameters$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    const-string v0, "UNKNOWN"

    return-object v0

    .line 73
    :pswitch_0
    const-string v0, "CRUNCHY"

    return-object v0

    .line 71
    :pswitch_1
    const-string v0, "RAW"

    return-object v0

    .line 69
    :pswitch_2
    const-string v0, "LEGACY"

    return-object v0

    .line 67
    :pswitch_3
    const-string v0, "TINK"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 46
    instance-of v0, p1, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    iget-object v0, v0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 50
    .local v0, "other":Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    iget-object v2, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 51
    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    .line 53
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 54
    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 55
    invoke-virtual {v2}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 50
    :goto_0
    return v1
.end method

.method public getSerialization()Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 83
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->serialization:Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 84
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->outputPrefixToString(Lcom/google/crypto/tink/proto/OutputPrefixType;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 81
    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
