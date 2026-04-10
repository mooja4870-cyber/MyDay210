.class public final Lcom/google/crypto/tink/tinkkey/internal/InternalKeyHandle;
.super Lcom/google/crypto/tink/tinkkey/KeyHandle;
.source "InternalKeyHandle.java"


# direct methods
.method public constructor <init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/proto/KeyStatusType;I)V
    .locals 1
    .param p1, "key"    # Lcom/google/crypto/tink/tinkkey/TinkKey;
    .param p2, "status"    # Lcom/google/crypto/tink/proto/KeyStatusType;
    .param p3, "keyId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "status",
            "keyId"
        }
    .end annotation

    .line 30
    invoke-static {p2}, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter;->fromProto(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/crypto/tink/tinkkey/KeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;I)V

    .line 31
    return-void
.end method
