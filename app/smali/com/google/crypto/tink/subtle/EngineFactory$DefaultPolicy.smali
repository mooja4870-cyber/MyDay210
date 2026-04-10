.class Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;
.super Ljava/lang/Object;
.source "EngineFactory.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/EngineFactory$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/EngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JcePrimitiveT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/subtle/EngineFactory$Policy<",
        "TJcePrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineWrapper<",
            "TJcePrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jceFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/subtle/EngineWrapper<",
            "TJcePrimitiveT;>;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy<TJcePrimitiveT;>;"
    .local p1, "jceFactory":Lcom/google/crypto/tink/subtle/EngineWrapper;, "Lcom/google/crypto/tink/subtle/EngineWrapper<TJcePrimitiveT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;->jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Lcom/google/crypto/tink/subtle/EngineFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/subtle/EngineWrapper;
    .param p2, "x1"    # Lcom/google/crypto/tink/subtle/EngineFactory$1;

    .line 62
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy<TJcePrimitiveT;>;"
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy<TJcePrimitiveT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;->jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/subtle/EngineWrapper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "preferredProviders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;)TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy<TJcePrimitiveT;>;"
    .local p2, "preferredProviders":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 77
    .local v1, "provider":Ljava/security/Provider;
    :try_start_0
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;->jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;

    invoke-interface {v2, p1, v1}, Lcom/google/crypto/tink/subtle/EngineWrapper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v2

    .line 81
    .end local v1    # "provider":Ljava/security/Provider;
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/EngineFactory$DefaultPolicy;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
