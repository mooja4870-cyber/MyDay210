.class public Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;
.super Ljava/lang/Object;
.source "AeadOrDaead.java"


# instance fields
.field private final aead:Lcom/google/crypto/tink/Aead;

.field private final deterministicAead:Lcom/google/crypto/tink/DeterministicAead;


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/Aead;)V
    .locals 1
    .param p1, "aead"    # Lcom/google/crypto/tink/Aead;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aead"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->deterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/google/crypto/tink/DeterministicAead;)V
    .locals 1
    .param p1, "deterministicAead"    # Lcom/google/crypto/tink/DeterministicAead;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deterministicAead"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    .line 39
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->deterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    .line 40
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 1
    .param p1, "ciphertext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->decrypt([B[B)[B

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->deterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->decryptDeterministically([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public encrypt([B[B)[B
    .locals 1
    .param p1, "plaintext"    # [B
    .param p2, "associatedData"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "plaintext",
            "associatedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->aead:Lcom/google/crypto/tink/Aead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/Aead;->encrypt([B[B)[B

    move-result-object v0

    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/subtle/AeadOrDaead;->deterministicAead:Lcom/google/crypto/tink/DeterministicAead;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/DeterministicAead;->encryptDeterministically([B[B)[B

    move-result-object v0

    return-object v0
.end method
