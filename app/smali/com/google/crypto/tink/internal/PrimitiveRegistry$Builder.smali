.class public final Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
.super Ljava/lang/Object;
.source "PrimitiveRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/PrimitiveRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final primitiveConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;",
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final primitiveWrapperMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/crypto/tink/PrimitiveWrapper<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V
    .locals 2
    .param p1, "registry"    # Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->access$000(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->access$100(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 37
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 37
    iget-object v0, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    .locals 2

    .line 110
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    return-object v0
.end method

.method public registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveConstructor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "PrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "TKeyT;TPrimitiveT;>;)",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 64
    .local p1, "primitiveConstructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<TKeyT;TPrimitiveT;>;"
    if-eqz p1, :cond_2

    .line 67
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;

    .line 69
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/PrimitiveRegistry$1;)V

    .line 70
    .local v0, "index":Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 72
    .local v1, "existingConstructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<**>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    .end local v1    # "existingConstructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<**>;"
    goto :goto_0

    .line 74
    .restart local v1    # "existingConstructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<**>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal PrimitiveConstructor object for already existing object of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v1    # "existingConstructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<**>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveConstructorMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :goto_0
    return-object p0

    .line 65
    .end local v0    # "index":Lcom/google/crypto/tink/internal/PrimitiveRegistry$PrimitiveConstructorIndex;
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "primitive constructor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputPrimitiveT:",
            "Ljava/lang/Object;",
            "WrapperPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/PrimitiveWrapper<",
            "TInputPrimitiveT;TWrapperPrimitiveT;>;)",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    .local p1, "wrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<TInputPrimitiveT;TWrapperPrimitiveT;>;"
    if-eqz p1, :cond_2

    .line 92
    invoke-interface {p1}, Lcom/google/crypto/tink/PrimitiveWrapper;->getPrimitiveClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "wrapperClassObject":Ljava/lang/Class;, "Ljava/lang/Class<TWrapperPrimitiveT;>;"
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    .line 95
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/PrimitiveWrapper;

    .line 96
    .local v1, "existingPrimitiveWrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<**>;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    .end local v1    # "existingPrimitiveWrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<**>;"
    goto :goto_0

    .line 98
    .restart local v1    # "existingPrimitiveWrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<**>;"
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to register non-equal PrimitiveWrapper object or input class object for already existing object of type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 104
    .end local v1    # "existingPrimitiveWrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<**>;"
    :cond_1
    iget-object v1, p0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->primitiveWrapperMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :goto_0
    return-object p0

    .line 90
    .end local v0    # "wrapperClassObject":Ljava/lang/Class;, "Ljava/lang/Class<TWrapperPrimitiveT;>;"
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "wrapper must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
