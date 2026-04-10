.class public final Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
.super Ljava/lang/Object;
.source "MonitoringKeysetInfo.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;,
        Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;
    }
.end annotation


# instance fields
.field private final annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final primaryKeyId:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "annotations"    # Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    .param p3, "primaryKeyId"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "annotations",
            "entries",
            "primaryKeyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 173
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    .line 175
    iput-object p2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    .line 176
    iput-object p3, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->primaryKeyId:Ljava/lang/Integer;

    .line 177
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$1;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;-><init>(Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public static newBuilder()Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;
    .locals 1

    .line 180
    new-instance v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;

    invoke-direct {v0}, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 198
    instance-of v0, p1, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 199
    return v1

    .line 201
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;

    .line 202
    .local v0, "info":Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;
    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v3, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    iget-object v3, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    .line 203
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->primaryKeyId:Ljava/lang/Integer;

    iget-object v3, v0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->primaryKeyId:Ljava/lang/Integer;

    .line 204
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 202
    :goto_0
    return v1
.end method

.method public getAnnotations()Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    return-object v0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo$Entry;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getPrimaryKeyId()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->primaryKeyId:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->annotations:Lcom/google/crypto/tink/monitoring/MonitoringAnnotations;

    iget-object v1, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->entries:Ljava/util/List;

    iget-object v2, p0, Lcom/google/crypto/tink/monitoring/MonitoringKeysetInfo;->primaryKeyId:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(annotations=%s, entries=%s, primaryKeyId=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
