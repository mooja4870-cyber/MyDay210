.class Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;
.super Ljava/lang/Object;
.source "SerializationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/SerializationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializerIndex"
.end annotation


# instance fields
.field private final keyClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final keySerializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyClass",
            "keySerializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "keySerializationClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/crypto/tink/internal/Serialization;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keyClass:Ljava/lang/Class;

    .line 184
    iput-object p2, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keySerializationClass:Ljava/lang/Class;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/SerializationRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/google/crypto/tink/internal/SerializationRegistry$1;

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
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

    .line 189
    instance-of v0, p1, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 190
    return v1

    .line 192
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;

    .line 193
    .local v0, "other":Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;
    iget-object v2, v0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keyClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keyClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keySerializationClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keySerializationClass:Ljava/lang/Class;

    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 193
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keyClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keySerializationClass:Ljava/lang/Class;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keyClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with serialization type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/SerializationRegistry$SerializerIndex;->keySerializationClass:Ljava/lang/Class;

    .line 206
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method
