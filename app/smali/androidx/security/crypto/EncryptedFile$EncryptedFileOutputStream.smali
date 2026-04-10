.class final Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "EncryptedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EncryptedFileOutputStream"
.end annotation


# instance fields
.field private final mEncryptedOutputStream:Ljava/io/OutputStream;


# direct methods
.method constructor <init>(Ljava/io/FileDescriptor;Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "descriptor"    # Ljava/io/FileDescriptor;
    .param p2, "encryptedOutputStream"    # Ljava/io/OutputStream;

    .line 299
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 300
    iput-object p2, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    .line 301
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 321
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 333
    return-void
.end method

.method public getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "For encrypted files, please open the relevant FileInput/FileOutputStream."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 311
    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 306
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Landroidx/security/crypto/EncryptedFile$EncryptedFileOutputStream;->mEncryptedOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 316
    return-void
.end method
