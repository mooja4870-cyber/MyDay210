.class public final Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;
.super Ljava/lang/Object;
.source "AndroidKeystoreAesGcm.java"

# interfaces
.implements Lcom/google/crypto/tink/Aead;


# static fields
.field private static final IV_SIZE_IN_BYTES:I = 0xc

.field private static final MAX_WAIT_TIME_MILLISECONDS_BEFORE_RETRY:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_SIZE_IN_BYTES:I = 0x10


# instance fields
.field private final key:Ljavax/crypto/SecretKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "keyId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 50
    .local v0, "keyStore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 51
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljavax/crypto/SecretKey;

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    .line 52
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_0

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keystore cannot load the key with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 3
    .param p1, "keyId"    # Ljava/lang/String;
    .param p2, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyId",
            "keyStore"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    .line 60
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_0

    .line 63
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keystore cannot load the key with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decryptInternal([B[B)[B
    .locals 5
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

    .line 113
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-direct {v0, v1, p1, v2, v3}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[BII)V

    .line 115
    .local v0, "params":Ljavax/crypto/spec/GCMParameterSpec;
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 116
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v2, v4, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 117
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 118
    array-length v2, p1

    sub-int/2addr v2, v3

    invoke-virtual {v1, p1, v3, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private encryptInternal([B[B)[B
    .locals 8
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

    .line 80
    array-length v0, p1

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_0

    .line 83
    array-length v0, p1

    const/16 v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v6, v0, [B

    .line 84
    .local v6, "ciphertext":[B
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 85
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->key:Ljavax/crypto/SecretKey;

    invoke-virtual {v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 86
    invoke-virtual {v2, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 87
    array-length v5, p1

    .line 88
    const/4 v4, 0x0

    const/16 v7, 0xc

    move-object v3, p1

    .end local p1    # "plaintext":[B
    .local v3, "plaintext":[B
    invoke-virtual/range {v2 .. v7}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p1

    .line 90
    .local p1, "unusedWritten":I
    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-static {v0, v4, v6, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object v6

    .line 81
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "plaintext":[B
    .end local v6    # "ciphertext":[B
    .local p1, "plaintext":[B
    :cond_0
    move-object v3, p1

    .end local p1    # "plaintext":[B
    .restart local v3    # "plaintext":[B
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "plaintext too long"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static sleepRandomAmount()V
    .locals 4

    .line 122
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 124
    .local v0, "waitTimeMillis":I
    int-to-long v1, v0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 128
    :goto_0
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

    .line 97
    array-length v0, p1

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 101
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decryptInternal([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 105
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleepRandomAmount()V

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->decryptInternal([B[B)[B

    move-result-object v1

    return-object v1

    .line 102
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 103
    .local v0, "ex":Ljavax/crypto/AEADBadTagException;
    throw v0

    .line 98
    .end local v0    # "ex":Ljavax/crypto/AEADBadTagException;
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

    .line 69
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->encryptInternal([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->TAG:Ljava/lang/String;

    const-string v2, "encountered a potentially transient KeyStore error, will wait and retry"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->sleepRandomAmount()V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreAesGcm;->encryptInternal([B[B)[B

    move-result-object v1

    return-object v1
.end method
