.class public final Lcom/google/crypto/tink/PrimitiveSet$Entry;
.super Ljava/lang/Object;
.source "PrimitiveSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/PrimitiveSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final fullPrimitive:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final identifier:[B

.field private final key:Lcom/google/crypto/tink/Key;

.field private final keyId:I

.field private final keyType:Ljava/lang/String;

.field private final outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

.field private final primitive:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final status:Lcom/google/crypto/tink/proto/KeyStatusType;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[BLcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/proto/OutputPrefixType;ILjava/lang/String;Lcom/google/crypto/tink/Key;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "identifier"    # [B
    .param p4, "status"    # Lcom/google/crypto/tink/proto/KeyStatusType;
    .param p5, "outputPrefixType"    # Lcom/google/crypto/tink/proto/OutputPrefixType;
    .param p6, "keyId"    # I
    .param p7, "keyType"    # Ljava/lang/String;
    .param p8, "key"    # Lcom/google/crypto/tink/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fullPrimitive",
            "primitive",
            "identifier",
            "status",
            "outputPrefixType",
            "keyId",
            "keyType",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;TP;[B",
            "Lcom/google/crypto/tink/proto/KeyStatusType;",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Key;",
            ")V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    .local p1, "fullPrimitive":Ljava/lang/Object;, "TP;"
    .local p2, "primitive":Ljava/lang/Object;, "TP;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->fullPrimitive:Ljava/lang/Object;

    .line 88
    iput-object p2, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->primitive:Ljava/lang/Object;

    .line 89
    array-length v0, p3

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    .line 90
    iput-object p4, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 91
    iput-object p5, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 92
    iput p6, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyId:I

    .line 93
    iput-object p7, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyType:Ljava/lang/String;

    .line 94
    iput-object p8, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    .line 95
    return-void
.end method


# virtual methods
.method public getFullPrimitive()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 107
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->fullPrimitive:Ljava/lang/Object;

    return-object v0
.end method

.method public final getIdentifier()[B
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 132
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    iget-object v1, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->identifier:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 148
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    return-object v0
.end method

.method public getKeyId()I
    .locals 1

    .line 140
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyId:I

    return v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 144
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 1

    .line 127
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->outputPrefixType:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 153
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->key:Lcom/google/crypto/tink/Key;

    invoke-virtual {v0}, Lcom/google/crypto/tink/Key;->getParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitive()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 119
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->primitive:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;
    .locals 1

    .line 123
    .local p0, "this":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<TP;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/PrimitiveSet$Entry;->status:Lcom/google/crypto/tink/proto/KeyStatusType;

    return-object v0
.end method
