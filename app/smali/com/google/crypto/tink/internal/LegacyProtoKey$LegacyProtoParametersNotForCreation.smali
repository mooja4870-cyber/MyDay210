.class Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;
.super Lcom/google/crypto/tink/Parameters;
.source "LegacyProtoKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/LegacyProtoKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyProtoParametersNotForCreation"
.end annotation


# instance fields
.field private final outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

.field private final typeUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/crypto/tink/proto/OutputPrefixType;)V
    .locals 0
    .param p1, "typeUrl"    # Ljava/lang/String;
    .param p2, "outputPrefixType"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeUrl",
            "outputPrefixType"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/google/crypto/tink/Parameters;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->typeUrl:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/internal/LegacyProtoKey$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .param p3, "x2"    # Lcom/google/crypto/tink/internal/LegacyProtoKey$1;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/proto/OutputPrefixType;)V

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

    .line 50
    sget-object v0, Lcom/google/crypto/tink/internal/LegacyProtoKey$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 60
    const-string v0, "UNKNOWN"

    return-object v0

    .line 58
    :pswitch_0
    const-string v0, "CRUNCHY"

    return-object v0

    .line 56
    :pswitch_1
    const-string v0, "RAW"

    return-object v0

    .line 54
    :pswitch_2
    const-string v0, "LEGACY"

    return-object v0

    .line 52
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
.method public hasIdRequirement()Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->typeUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 70
    invoke-static {v1}, Lcom/google/crypto/tink/internal/LegacyProtoKey$LegacyProtoParametersNotForCreation;->outputPrefixToString(Lcom/google/crypto/tink/proto/OutputPrefixType;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 69
    const-string v1, "(typeUrl=%s, outputPrefixType=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
