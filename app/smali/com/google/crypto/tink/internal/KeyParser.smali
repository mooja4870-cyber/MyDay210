.class public abstract Lcom/google/crypto/tink/internal/KeyParser;
.super Ljava/lang/Object;
.source "KeyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SerializationT::",
        "Lcom/google/crypto/tink/internal/Serialization;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

.field private final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)V
    .locals 0
    .param p1, "objectIdentifier"    # Lcom/google/crypto/tink/util/Bytes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "objectIdentifier",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/crypto/tink/internal/KeyParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

    .line 48
    iput-object p2, p0, Lcom/google/crypto/tink/internal/KeyParser;->serializationClass:Ljava/lang/Class;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/util/Bytes;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/google/crypto/tink/internal/KeyParser$1;

    .line 31
    .local p0, "this":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/KeyParser;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)V

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;
    .locals 1
    .param p1, "objectIdentifier"    # Lcom/google/crypto/tink/util/Bytes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "objectIdentifier",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction<",
            "TSerializationT;>;",
            "Lcom/google/crypto/tink/util/Bytes;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 109
    .local p0, "function":Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;, "Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction<TSerializationT;>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/KeyParser$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/crypto/tink/internal/KeyParser$1;-><init>(Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;)V

    return-object v0
.end method


# virtual methods
.method public final getObjectIdentifier()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 70
    .local p0, "this":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyParser;->objectIdentifier:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public final getSerializationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/KeyParser;->serializationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .param p2    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
