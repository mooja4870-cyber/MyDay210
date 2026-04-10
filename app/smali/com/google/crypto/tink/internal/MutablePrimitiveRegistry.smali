.class public final Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;
.super Ljava/lang/Object;
.source "MutablePrimitiveRegistry.java"


# static fields
.field private static globalInstance:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;


# instance fields
.field private final registry:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/crypto/tink/internal/PrimitiveRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    invoke-direct {v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>()V

    .line 48
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 50
    return-void
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    return-object v0
.end method

.method public static resetGlobalInstanceTestOnly()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance:Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    .line 45
    return-void
.end method


# virtual methods
.method public getInputPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapperClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<WrapperPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TWrapperPrimitiveT;>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    .local p1, "wrapperClassObject":Ljava/lang/Class;, "Ljava/lang/Class<TWrapperPrimitiveT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getInputPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "primitiveClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "PrimitiveT:",
            "Ljava/lang/Object;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 87
    .local p1, "key":Lcom/google/crypto/tink/Key;, "TKeyT;"
    .local p2, "primitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<TPrimitiveT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "constructor"
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
            "TKeyT;TPrimitiveT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "constructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<TKeyT;TPrimitiveT;>;"
    monitor-enter p0

    .line 62
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V

    .line 64
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    .line 66
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 61
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;
    .end local p1    # "constructor":Lcom/google/crypto/tink/internal/PrimitiveConstructor;, "Lcom/google/crypto/tink/internal/PrimitiveConstructor<TKeyT;TPrimitiveT;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)V
    .locals 2
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
            "TInputPrimitiveT;TWrapperPrimitiveT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "wrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<TInputPrimitiveT;TWrapperPrimitiveT;>;"
    monitor-enter p0

    .line 72
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    .line 74
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/PrimitiveRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;
    .end local p1    # "wrapper":Lcom/google/crypto/tink/PrimitiveWrapper;, "Lcom/google/crypto/tink/PrimitiveWrapper<TInputPrimitiveT;TWrapperPrimitiveT;>;"
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public wrap(Lcom/google/crypto/tink/PrimitiveSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "primitives",
            "wrapperClassObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InputPrimitiveT:",
            "Ljava/lang/Object;",
            "WrapperPrimitiveT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "TInputPrimitiveT;>;",
            "Ljava/lang/Class<",
            "TWrapperPrimitiveT;>;)TWrapperPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<TInputPrimitiveT;>;"
    .local p2, "wrapperClassObject":Ljava/lang/Class;, "Ljava/lang/Class<TWrapperPrimitiveT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->wrap(Lcom/google/crypto/tink/PrimitiveSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
