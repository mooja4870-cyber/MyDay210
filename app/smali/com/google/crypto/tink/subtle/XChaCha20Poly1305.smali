.class public final Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;
.super Ljava/lang/Object;
.source "XChaCha20Poly1305.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# instance fields
.field private final cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;-><init>([B)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;

    .line 35
    return-void
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 3
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

    .line 52
    array-length v0, p1

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 55
    const/16 v0, 0x18

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 56
    .local v1, "nonce":[B
    array-length v2, p1

    sub-int/2addr v2, v0

    .line 57
    invoke-static {p1, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "rawCiphertext":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;

    invoke-virtual {v2, v0, v1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;->decrypt(Ljava/nio/ByteBuffer;[B[B)[B

    move-result-object v2

    return-object v2

    .line 53
    .end local v0    # "rawCiphertext":Ljava/nio/ByteBuffer;
    .end local v1    # "nonce":[B
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "ciphertext too short"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encrypt([B[B)[B
    .locals 3
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

    .line 40
    array-length v0, p1

    const/16 v1, 0x18

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    .line 41
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "output":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v1

    .line 44
    .local v1, "nonce":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 45
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->cipher:Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/google/crypto/tink/aead/internal/InsecureNonceXChaCha20Poly1305;->encrypt(Ljava/nio/ByteBuffer;[B[B[B)V

    .line 46
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method
