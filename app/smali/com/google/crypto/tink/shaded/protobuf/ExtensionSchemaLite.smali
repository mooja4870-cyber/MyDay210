.class final Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;
.super Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;
.source "ExtensionSchemaLite.java"


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema<",
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;-><init>()V

    return-void
.end method


# virtual methods
.method extensionNumber(Ljava/util/Map$Entry;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 330
    .local p1, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 331
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 332
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    return v1
.end method

.method findExtensionByNumber(Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)Ljava/lang/Object;
    .locals 1
    .param p1, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .param p2, "defaultInstance"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .param p3, "number"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "extensionRegistry",
            "defaultInstance",
            "number"
        }
    .end annotation

    .line 541
    invoke-virtual {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->findLiteExtensionByNumber(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    return-object v0
.end method

.method getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 50
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    return-object v0
.end method

.method getMutableExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;"
        }
    .end annotation

    .line 60
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->ensureExtensionsAreMutable()Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v0

    return-object v0
.end method

.method hasExtensions(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Z
    .locals 1
    .param p1, "prototype"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 45
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    return v0
.end method

.method makeImmutable(Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;->getExtensions(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->makeImmutable()V

    .line 66
    return-void
.end method

.method parseExtension(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 8
    .param p1, "containerMessage"    # Ljava/lang/Object;
    .param p2, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p3, "extensionObject"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
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
            "containerMessage",
            "reader",
            "extensionObject",
            "extensionRegistry",
            "extensions",
            "unknownFields",
            "unknownFieldSchema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;TUB;",
            "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    .local p5, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p7, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    move-object v0, p3

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 80
    .local v0, "extension":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v2

    .line 82
    .local v2, "fieldNumber":I
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    const/4 v7, 0x0

    .line 84
    .local v7, "value":Ljava/lang/Object;
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 192
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local v1, "containerMessage":Ljava/lang/Object;
    .local v5, "unknownFields":Ljava/lang/Object;, "TUB;"
    .local v6, "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "Type cannot be packed: "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    iget-object p7, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 193
    invoke-virtual {p7}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p1, p6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 178
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local p1    # "containerMessage":Ljava/lang/Object;
    .restart local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 180
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 185
    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    move-result-object v4

    .line 181
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->filterUnknownEnumList(Ljava/lang/Object;ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p6

    .line 188
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    move-object p1, v3

    .line 189
    .end local v7    # "value":Ljava/lang/Object;
    .local p1, "value":Ljava/lang/Object;
    goto/16 :goto_0

    .line 171
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_1
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    .line 173
    move-object p6, p1

    .line 174
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 164
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_2
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    .line 166
    move-object p6, p1

    .line 167
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 157
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_3
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    .line 159
    move-object p6, p1

    .line 160
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 150
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_4
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    .line 152
    move-object p6, p1

    .line 153
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 143
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_5
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    .line 145
    move-object p6, p1

    .line 146
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 136
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_6
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    .line 138
    move-object p6, p1

    .line 139
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 129
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_7
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    .line 131
    move-object p6, p1

    .line 132
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 122
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_8
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    .line 124
    move-object p6, p1

    .line 125
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto/16 :goto_0

    .line 115
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_9
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    .line 117
    move-object p6, p1

    .line 118
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_0

    .line 108
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_a
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    .line 110
    move-object p6, p1

    .line 111
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_0

    .line 101
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_b
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    .line 103
    move-object p6, p1

    .line 104
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_0

    .line 94
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_c
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    .line 96
    move-object p6, p1

    .line 97
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    goto :goto_0

    .line 87
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v7    # "value":Ljava/lang/Object;
    .local p1, "containerMessage":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :pswitch_d
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-interface {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    .line 89
    move-object p6, p1

    .line 90
    .end local v7    # "value":Ljava/lang/Object;
    .local p6, "value":Ljava/lang/Object;
    move-object p6, v5

    .line 195
    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p1, "value":Ljava/lang/Object;
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_0
    iget-object p7, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p7, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 196
    .end local p1    # "value":Ljava/lang/Object;
    goto/16 :goto_4

    .line 82
    .end local v1    # "containerMessage":Ljava/lang/Object;
    .end local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .local p1, "containerMessage":Ljava/lang/Object;
    .restart local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    :cond_0
    move-object v1, p1

    move-object v5, p6

    move-object v6, p7

    .line 197
    .end local p1    # "containerMessage":Ljava/lang/Object;
    .end local p6    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .end local p7    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    .restart local v1    # "containerMessage":Ljava/lang/Object;
    .restart local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .restart local v6    # "unknownFieldSchema":Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;, "Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema<TUT;TUB;>;"
    const/4 p1, 0x0

    .line 199
    .local p1, "value":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object p6

    sget-object p7, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ENUM:Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    if-ne p6, p7, :cond_2

    .line 200
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32()I

    move-result p6

    .line 201
    .local p6, "number":I
    iget-object p7, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p7}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getEnumType()Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;

    move-result-object p7

    invoke-interface {p7, p6}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumLite;

    move-result-object p7

    .line 202
    .local p7, "enumValue":Ljava/lang/Object;
    if-nez p7, :cond_1

    .line 203
    invoke-static {v1, v2, p6, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->storeUnknownEnum(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 208
    :cond_1
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 209
    .end local p6    # "number":I
    .end local p7    # "enumValue":Ljava/lang/Object;
    goto/16 :goto_1

    .line 210
    :cond_2
    sget-object p6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p7}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p7

    aget p6, p6, p7

    packed-switch p6, :pswitch_data_1

    goto/16 :goto_1

    .line 284
    :pswitch_e
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-nez p6, :cond_4

    .line 285
    iget-object p6, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 286
    .local p6, "oldValue":Ljava/lang/Object;
    instance-of p7, p6, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_4

    .line 287
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p7

    .line 288
    .local p7, "extSchema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    move-object v3, p6

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 289
    invoke-interface {p7}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, "newValue":Ljava/lang/Object;
    invoke-interface {p7, v3, p6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 291
    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 292
    move-object p6, v3

    .line 294
    .end local v3    # "newValue":Ljava/lang/Object;
    :cond_3
    invoke-interface {p2, p6, p7, p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->mergeMessageField(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 295
    return-object v5

    .line 298
    .end local p6    # "oldValue":Ljava/lang/Object;
    .end local p7    # "extSchema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    :cond_4
    nop

    .line 300
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 299
    invoke-interface {p2, p6, p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 301
    goto/16 :goto_1

    .line 261
    :pswitch_f
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-nez p6, :cond_6

    .line 262
    iget-object p6, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 263
    .restart local p6    # "oldValue":Ljava/lang/Object;
    instance-of p7, p6, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    if-eqz p7, :cond_6

    .line 264
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object p7

    invoke-virtual {p7, p6}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p7

    .line 265
    .restart local p7    # "extSchema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    move-object v3, p6

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->isMutable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 266
    invoke-interface {p7}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 267
    .restart local v3    # "newValue":Ljava/lang/Object;
    invoke-interface {p7, v3, p6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 268
    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 269
    move-object p6, v3

    .line 271
    .end local v3    # "newValue":Ljava/lang/Object;
    :cond_5
    invoke-interface {p2, p6, p7, p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->mergeGroupField(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    .line 272
    return-object v5

    .line 275
    .end local p6    # "oldValue":Ljava/lang/Object;
    .end local p7    # "extSchema":Lcom/google/crypto/tink/shaded/protobuf/Schema;
    :cond_6
    nop

    .line 277
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p6

    .line 276
    invoke-interface {p2, p6, p4}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    .line 278
    goto/16 :goto_1

    .line 255
    :pswitch_10
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 256
    goto/16 :goto_1

    .line 236
    :pswitch_11
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    .line 237
    goto/16 :goto_1

    .line 304
    :pswitch_12
    new-instance p6, Ljava/lang/IllegalStateException;

    const-string p7, "Shouldn\'t reach here."

    invoke-direct {p6, p7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p6

    .line 251
    :pswitch_13
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 252
    goto/16 :goto_1

    .line 248
    :pswitch_14
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 249
    goto :goto_1

    .line 245
    :pswitch_15
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 246
    goto :goto_1

    .line 242
    :pswitch_16
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readSFixed32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 243
    goto :goto_1

    .line 239
    :pswitch_17
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 240
    goto :goto_1

    .line 233
    :pswitch_18
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readBool()Z

    move-result p6

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 234
    goto :goto_1

    .line 230
    :pswitch_19
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 231
    goto :goto_1

    .line 227
    :pswitch_1a
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFixed64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 228
    goto :goto_1

    .line 224
    :pswitch_1b
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt32()I

    move-result p6

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 225
    goto :goto_1

    .line 221
    :pswitch_1c
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readUInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 222
    goto :goto_1

    .line 218
    :pswitch_1d
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readInt64()J

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 219
    goto :goto_1

    .line 215
    :pswitch_1e
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readFloat()F

    move-result p6

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 216
    goto :goto_1

    .line 212
    :pswitch_1f
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readDouble()D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 213
    nop

    .line 307
    :goto_1
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->isRepeated()Z

    move-result p6

    if-eqz p6, :cond_7

    .line 308
    iget-object p6, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->addRepeatedField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    goto :goto_3

    .line 310
    :cond_7
    sget-object p6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object p7

    invoke-virtual {p7}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result p7

    aget p6, p6, p7

    packed-switch p6, :pswitch_data_2

    goto :goto_2

    .line 314
    :pswitch_20
    iget-object p6, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->getField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;)Ljava/lang/Object;

    move-result-object p6

    .line 315
    .restart local p6    # "oldValue":Ljava/lang/Object;
    if-eqz p6, :cond_8

    .line 316
    invoke-static {p6, p1}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    .end local p6    # "oldValue":Ljava/lang/Object;
    :cond_8
    :goto_2
    iget-object p6, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p5, p6, p1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 325
    .end local p1    # "value":Ljava/lang/Object;
    :goto_3
    move-object p6, v5

    .end local v5    # "unknownFields":Ljava/lang/Object;, "TUB;"
    .local p6, "unknownFields":Ljava/lang/Object;, "TUB;"
    :goto_4
    return-object p6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method parseLengthPrefixedMessageSetItem(Lcom/google/crypto/tink/shaded/protobuf/Reader;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)V
    .locals 3
    .param p1, "reader"    # Lcom/google/crypto/tink/shaded/protobuf/Reader;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "extensionObject",
            "extensionRegistry",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    .local p4, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 553
    .local v0, "extension":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    nop

    .line 554
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {p1, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    .line 555
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 556
    return-void
.end method

.method parseMessageSetItem(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)V
    .locals 5
    .param p1, "data"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .param p2, "extensionObject"    # Ljava/lang/Object;
    .param p3, "extensionRegistry"    # Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionObject",
            "extensionRegistry",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    .local p4, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p2

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 568
    .local v0, "extension":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->getMessageDefaultInstance()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->newBuilderForType()Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    move-result-object v1

    .line 570
    .local v1, "builder":Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->newCodedInput()Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;

    move-result-object v2

    .line 572
    .local v2, "input":Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
    invoke-interface {v1, v2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    .line 573
    iget-object v3, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-interface {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->setField(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    .line 574
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 575
    return-void
.end method

.method serializeExtension(Lcom/google/crypto/tink/shaded/protobuf/Writer;Ljava/util/Map$Entry;)V
    .locals 6
    .param p1, "writer"    # Lcom/google/crypto/tink/shaded/protobuf/Writer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "writer",
            "extension"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 337
    .local p2, "extension":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    nop

    .line 338
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 339
    .local v0, "descriptor":Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 461
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 462
    .local v1, "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 463
    nop

    .line 464
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 465
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 467
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 463
    invoke-static {v3, v4, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_0

    .line 449
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 450
    .restart local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 451
    nop

    .line 452
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v3

    .line 453
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 455
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    .line 451
    invoke-static {v3, v4, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 458
    .end local v1    # "data":Ljava/util/List;, "Ljava/util/List<*>;"
    :cond_0
    goto/16 :goto_0

    .line 444
    :pswitch_2
    nop

    .line 445
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 444
    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 446
    goto/16 :goto_0

    .line 398
    :pswitch_3
    nop

    .line 399
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 398
    invoke-static {v1, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 400
    goto/16 :goto_0

    .line 437
    :pswitch_4
    nop

    .line 438
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 439
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 441
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 437
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 442
    goto/16 :goto_0

    .line 430
    :pswitch_5
    nop

    .line 431
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 432
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 434
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 430
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 435
    goto/16 :goto_0

    .line 423
    :pswitch_6
    nop

    .line 424
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 425
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 427
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 423
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 428
    goto/16 :goto_0

    .line 416
    :pswitch_7
    nop

    .line 417
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 418
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 420
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 416
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 421
    goto/16 :goto_0

    .line 409
    :pswitch_8
    nop

    .line 410
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 411
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 413
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 409
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 414
    goto/16 :goto_0

    .line 402
    :pswitch_9
    nop

    .line 403
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 404
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 406
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 402
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 407
    goto/16 :goto_0

    .line 391
    :pswitch_a
    nop

    .line 392
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 393
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 395
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 391
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 396
    goto/16 :goto_0

    .line 384
    :pswitch_b
    nop

    .line 385
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 386
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 388
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 384
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 389
    goto :goto_0

    .line 377
    :pswitch_c
    nop

    .line 378
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 379
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 381
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 377
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 382
    goto :goto_0

    .line 370
    :pswitch_d
    nop

    .line 371
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 372
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 374
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 370
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 375
    goto :goto_0

    .line 363
    :pswitch_e
    nop

    .line 364
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 365
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 367
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 363
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 368
    goto :goto_0

    .line 356
    :pswitch_f
    nop

    .line 357
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 358
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 360
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 356
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 361
    goto :goto_0

    .line 349
    :pswitch_10
    nop

    .line 350
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 351
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 353
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 349
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 354
    goto :goto_0

    .line 342
    :pswitch_11
    nop

    .line 343
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 344
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 346
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked()Z

    move-result v3

    .line 342
    invoke-static {v1, v2, p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    .line 347
    nop

    .line 470
    :cond_1
    :goto_0
    goto/16 :goto_1

    .line 473
    :cond_2
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 529
    :pswitch_12
    nop

    .line 530
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 531
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 532
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    .line 529
    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_1

    .line 523
    :pswitch_13
    nop

    .line 524
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    .line 525
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 526
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    .line 523
    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    .line 527
    goto/16 :goto_1

    .line 520
    :pswitch_14
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 521
    goto/16 :goto_1

    .line 499
    :pswitch_15
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 500
    goto/16 :goto_1

    .line 517
    :pswitch_16
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    .line 518
    goto/16 :goto_1

    .line 514
    :pswitch_17
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt64(IJ)V

    .line 515
    goto/16 :goto_1

    .line 511
    :pswitch_18
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSInt32(II)V

    .line 512
    goto/16 :goto_1

    .line 508
    :pswitch_19
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed64(IJ)V

    .line 509
    goto/16 :goto_1

    .line 505
    :pswitch_1a
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeSFixed32(II)V

    .line 506
    goto/16 :goto_1

    .line 502
    :pswitch_1b
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt32(II)V

    .line 503
    goto/16 :goto_1

    .line 496
    :pswitch_1c
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeBool(IZ)V

    .line 497
    goto/16 :goto_1

    .line 493
    :pswitch_1d
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed32(II)V

    .line 494
    goto :goto_1

    .line 490
    :pswitch_1e
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFixed64(IJ)V

    .line 491
    goto :goto_1

    .line 487
    :pswitch_1f
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt32(II)V

    .line 488
    goto :goto_1

    .line 484
    :pswitch_20
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeUInt64(IJ)V

    .line 485
    goto :goto_1

    .line 481
    :pswitch_21
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeInt64(IJ)V

    .line 482
    goto :goto_1

    .line 478
    :pswitch_22
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeFloat(IF)V

    .line 479
    goto :goto_1

    .line 475
    :pswitch_23
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->writeDouble(ID)V

    .line 476
    nop

    .line 536
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method setExtensions(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/FieldSet;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "extensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<",
            "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "extensions":Lcom/google/crypto/tink/shaded/protobuf/FieldSet;, "Lcom/google/crypto/tink/shaded/protobuf/FieldSet<Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtensionDescriptor;>;"
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p2, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    .line 56
    return-void
.end method
