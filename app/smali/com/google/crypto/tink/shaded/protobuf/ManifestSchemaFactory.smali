.class final Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/SchemaFactory;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;


# instance fields
.field private final messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 152
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;-><init>(Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V

    .line 46
    return-void
.end method

.method private constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V
    .locals 1
    .param p1, "messageInfoFactory"    # Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfoFactory"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    .line 50
    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    .locals 4

    .line 119
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    .line 120
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;)V

    .line 119
    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    .locals 4

    .line 167
    :try_start_0
    const-string v0, "com.google.crypto.tink.shaded.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 169
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    return-object v1
.end method

.method private static isProto2(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z
    .locals 2
    .param p0, "messageInfo"    # Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    .line 115
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO2:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 8
    .param p1, "messageInfo"    # Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    nop

    .line 81
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->lite()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v4

    .line 83
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v6

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v7

    .line 78
    move-object v1, p0

    move-object v2, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v2, "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    invoke-static/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    move-object v0, v1

    move-object v1, v2

    .end local v2    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    goto :goto_0

    .line 86
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    :cond_0
    move-object v0, p0

    move-object v1, p1

    .line 89
    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->lite()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v6

    .line 86
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    .line 77
    :goto_0
    return-object p0

    .line 95
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->isProto2(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 96
    nop

    .line 99
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->full()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v3

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v5

    .line 103
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v6

    .line 96
    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_1

    .line 104
    :cond_2
    nop

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 108
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->full()Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    move-result-object v3

    .line 109
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 111
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    move-result-object v6

    .line 104
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    .line 95
    :goto_1
    return-object p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;

    move-result-object v0

    .line 59
    .local v0, "messageInfo":Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-class v1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->lite()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v2

    .line 64
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->newSchema(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemas;->full()Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    move-result-object v2

    .line 69
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;->getDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v3

    .line 66
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;->newSchema(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 72
    :cond_1
    invoke-static {p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    return-object v1
.end method
