.class public final Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;
.super Ljava/lang/Object;
.source "SerializationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/SerializationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final keyParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final keySerializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;",
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final parametersParserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;",
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final parametersSerializerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;",
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V
    .locals 2
    .param p1, "registry"    # Lcom/google/crypto/tink/internal/SerializationRegistry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->access$000(Lcom/google/crypto/tink/internal/SerializationRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->access$100(Lcom/google/crypto/tink/internal/SerializationRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->access$200(Lcom/google/crypto/tink/internal/SerializationRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->access$300(Lcom/google/crypto/tink/internal/SerializationRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    .line 59
    return-void
.end method

.method static synthetic access$1000(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 41
    iget-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method build()Lcom/google/crypto/tink/internal/SerializationRegistry;
    .locals 2

    .line 166
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V

    return-object v0
.end method

.method public registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    .local p1, "parser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;

    .line 99
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/KeyParser;->getSerializationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/KeyParser;->getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;-><init>(Ljava/lang/Class;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V

    .line 100
    .local v0, "index":Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/KeyParser;

    .line 102
    .local v1, "existingParser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v1    # "existingParser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<*>;"
    goto :goto_0

    .line 103
    .restart local v1    # "existingParser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<*>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal parser for already existing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    .end local v1    # "existingParser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<*>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keyParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_0
    return-object p0
.end method

.method public registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "TKeyT;TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 72
    .local p1, "serializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<TKeyT;TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;

    .line 73
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/KeySerializer;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/KeySerializer;->getSerializationClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V

    .line 74
    .local v0, "index":Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/KeySerializer;

    .line 76
    .local v1, "existingSerializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<**>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    .end local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<**>;"
    goto :goto_0

    .line 77
    .restart local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<**>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal serializer for already existing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<**>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->keySerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :goto_0
    return-object p0
.end method

.method public registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 151
    .local p1, "parser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;

    .line 152
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ParametersParser;->getSerializationClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ParametersParser;->getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;-><init>(Ljava/lang/Class;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V

    .line 153
    .local v0, "index":Lcom/google/crypto/tink/internal/SerializationRegistry$ParserIndex;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/ParametersParser;

    .line 155
    .local v1, "existingParser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<*>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    .end local v1    # "existingParser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<*>;"
    goto :goto_0

    .line 156
    .restart local v1    # "existingParser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<*>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal parser for already existing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    .end local v1    # "existingParser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<*>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersParserMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :goto_0
    return-object p0
.end method

.method public registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "TParametersT;TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 125
    .local p1, "serializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;

    .line 126
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ParametersSerializer;->getParametersClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ParametersSerializer;->getSerializationClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V

    .line 127
    .local v0, "index":Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 129
    .local v1, "existingSerializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<**>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    .end local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<**>;"
    goto :goto_0

    .line 130
    .restart local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<**>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal serializer for already existing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v1    # "existingSerializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<**>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->parametersSerializerMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :goto_0
    return-object p0
.end method
