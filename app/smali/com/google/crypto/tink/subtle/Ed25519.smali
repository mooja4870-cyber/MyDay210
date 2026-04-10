.class final Lcom/google/crypto/tink/subtle/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;,
        Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZT;,
        Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    }
.end annotation


# static fields
.field private static final CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

.field static final GROUP_ORDER:[B

.field private static final NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

.field public static final PUBLIC_KEY_LEN:I = 0x20

.field public static final SECRET_KEY_LEN:I = 0x20

.field public static final SIGNATURE_LEN:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    const/16 v1, 0xa

    new-array v2, v1, [J

    fill-array-data v2, :array_0

    new-array v3, v1, [J

    fill-array-data v3, :array_1

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-direct {v0, v2, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    .line 57
    new-instance v0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    new-array v3, v1, [J

    fill-array-data v3, :array_3

    new-array v4, v1, [J

    fill-array-data v4, :array_4

    new-array v5, v1, [J

    fill-array-data v5, :array_5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>([J[J[J)V

    new-array v1, v1, [J

    fill-array-data v1, :array_6

    invoke-direct {v0, v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;[J)V

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    .line 1560
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    return-void

    :array_0
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 1
        -0x13t
        -0x2dt
        -0xbt
        0x5ct
        0x1at
        0x63t
        0x12t
        0x58t
        -0x2at
        -0x64t
        -0x9t
        -0x5et
        -0x22t
        -0x7t
        -0x22t
        0x14t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 1620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([J)I
    .locals 1
    .param p0, "x0"    # [J

    .line 46
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->getLsb([J)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([J[J)V
    .locals 0
    .param p0, "x0"    # [J
    .param p1, "x1"    # [J

    .line 46
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->pow2252m3([J[J)V

    return-void
.end method

.method static synthetic access$200([J)Z
    .locals 1
    .param p0, "x0"    # [J

    .line 46
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->isNonZeroVarTime([J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300([J[J)V
    .locals 0
    .param p0, "x0"    # [J
    .param p1, "x1"    # [J

    .line 46
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    return-void
.end method

.method private static add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "extended"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "cached"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    .line 388
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 391
    .local v0, "t":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 394
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 397
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 400
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 403
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 406
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 409
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 412
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 415
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 418
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 421
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 422
    return-void
.end method

.method private static doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 10
    .param p0, "a"    # [B
    .param p1, "pointA"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "pointA",
            "b"
        }
    .end annotation

    .line 697
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    .line 698
    .local v0, "pointAArray":[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 699
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>()V

    .line 700
    .local v1, "t":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    .line 701
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 702
    .local v2, "doubleA":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 703
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v0, v4

    invoke-static {v1, v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 704
    new-instance v4, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;

    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v5, v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-direct {v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V

    aput-object v4, v0, v3

    .line 702
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 707
    .end local v3    # "i":I
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object v3

    .line 708
    .local v3, "aSlide":[B
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519;->slide([B)[B

    move-result-object v4

    .line 709
    .local v4, "bSlide":[B
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v5, v6}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 710
    .end local v1    # "t":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .local v5, "t":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    new-instance v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v1}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 711
    .local v1, "u":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/16 v6, 0xff

    .line 712
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 713
    aget-byte v7, v3, v6

    if-nez v7, :cond_2

    aget-byte v7, v4, v6

    if-eqz v7, :cond_1

    .line 714
    goto :goto_2

    .line 712
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 717
    :cond_2
    :goto_2
    if-ltz v6, :cond_7

    .line 718
    new-instance v7, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v7, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    invoke-static {v5, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 719
    aget-byte v7, v3, v6

    if-lez v7, :cond_3

    .line 720
    invoke-static {v1, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    aget-byte v8, v3, v6

    div-int/lit8 v8, v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v5, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_3

    .line 721
    :cond_3
    aget-byte v7, v3, v6

    if-gez v7, :cond_4

    .line 722
    invoke-static {v1, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    aget-byte v8, v3, v6

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    aget-object v8, v0, v8

    invoke-static {v5, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 724
    :cond_4
    :goto_3
    aget-byte v7, v4, v6

    if-lez v7, :cond_5

    .line 725
    invoke-static {v1, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v9, v4, v6

    div-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v5, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    goto :goto_4

    .line 726
    :cond_5
    aget-byte v7, v4, v6

    if-gez v7, :cond_6

    .line 727
    invoke-static {v1, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B2:[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-byte v9, v4, v6

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v5, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 717
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 731
    :cond_7
    new-instance v7, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v7, v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    return-object v7
.end method

.method private static doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "p"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    .line 482
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 485
    .local v0, "t0":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 488
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 491
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 494
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 497
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 500
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 503
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 506
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 509
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 512
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 513
    return-void
.end method

.method private static doubleXYZT(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;)V
    .locals 1
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "p"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "p"
        }
    .end annotation

    .line 519
    iget-object v0, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-static {p0, v0}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 520
    return-void
.end method

.method private static eq(II)I
    .locals 2
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 529
    xor-int v0, p0, p1

    not-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 530
    .local v0, "r":I
    shl-int/lit8 v1, v0, 0x4

    and-int/2addr v0, v1

    .line 531
    shl-int/lit8 v1, v0, 0x2

    and-int/2addr v0, v1

    .line 532
    shl-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v1

    .line 533
    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    return v1
.end method

.method static getHashedScalar([B)[B
    .locals 4
    .param p0, "privateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1511
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "SHA-512"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 1512
    .local v0, "digest":Ljava/security/MessageDigest;
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 1513
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 1516
    .local v1, "h":[B
    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xf8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1518
    const/16 v2, 0x1f

    aget-byte v3, v1, v2

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1520
    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x40

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 1521
    return-object v1
.end method

.method private static getLsb([J)I
    .locals 2
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 756
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isNonZeroVarTime([J)Z
    .locals 7
    .param p0, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 740
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [J

    .line 741
    .local v0, "inCopy":[J
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 742
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 743
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->contract([J)[B

    move-result-object v2

    .line 744
    .local v2, "bytes":[B
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-byte v6, v2, v5

    .line 745
    .local v6, "b":B
    if-eqz v6, :cond_0

    .line 746
    return v1

    .line 744
    .end local v6    # "b":B
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 749
    :cond_1
    return v3
.end method

.method private static isSmallerThanGroupOrder([B)Z
    .locals 4
    .param p0, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1575
    const/16 v0, 0x1f

    .local v0, "j":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1577
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 1578
    .local v2, "a":I
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519;->GROUP_ORDER:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    .line 1579
    .local v3, "b":I
    if-eq v2, v3, :cond_1

    .line 1580
    if-ge v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1575
    .end local v2    # "a":I
    .end local v3    # "b":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1583
    .end local v0    # "j":I
    :cond_2
    return v1
.end method

.method private static load3([BI)J
    .locals 5
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 875
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    .line 876
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 877
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 878
    return-wide v0
.end method

.method private static load4([BI)J
    .locals 5
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "idx"
        }
    .end annotation

    .line 885
    invoke-static {p0, p1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v0

    .line 886
    .local v0, "result":J
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 887
    return-wide v0
.end method

.method private static mulAdd([B[B[B[B)V
    .locals 200
    .param p0, "s"    # [B
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .param p3, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "a",
            "b",
            "c"
        }
    .end annotation

    .line 1170
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    .line 1171
    .local v4, "a0":J
    const/4 v8, 0x2

    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v9

    const/4 v11, 0x5

    shr-long/2addr v9, v11

    and-long/2addr v9, v6

    .line 1172
    .local v9, "a1":J
    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v12

    shr-long/2addr v12, v8

    and-long/2addr v12, v6

    .line 1173
    .local v12, "a2":J
    const/4 v14, 0x7

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v15

    shr-long/2addr v15, v14

    and-long/2addr v15, v6

    .line 1174
    .local v15, "a3":J
    move-wide/from16 v17, v6

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v19

    const/4 v7, 0x4

    shr-long v19, v19, v7

    and-long v19, v19, v17

    .line 1175
    .local v19, "a4":J
    move/from16 v21, v7

    const/16 v7, 0xd

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v22

    const/16 v24, 0x1

    shr-long v22, v22, v24

    and-long v22, v22, v17

    .line 1176
    .local v22, "a5":J
    const/16 v7, 0xf

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v26

    const/16 v28, 0x6

    shr-long v26, v26, v28

    and-long v26, v26, v17

    .line 1177
    .local v26, "a6":J
    const/16 v7, 0x12

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v30

    const/16 v32, 0x3

    shr-long v30, v30, v32

    and-long v30, v30, v17

    .line 1178
    .local v30, "a7":J
    const/16 v7, 0x15

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v34

    and-long v34, v34, v17

    .line 1179
    .local v34, "a8":J
    const/16 v7, 0x17

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v37

    shr-long v37, v37, v11

    and-long v37, v37, v17

    .line 1180
    .local v37, "a9":J
    const/16 v7, 0x1a

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v40

    shr-long v40, v40, v8

    and-long v40, v40, v17

    .line 1181
    .local v40, "a10":J
    const/16 v7, 0x1c

    invoke-static {v0, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v42

    shr-long v42, v42, v14

    .line 1182
    .local v42, "a11":J
    invoke-static {v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v44

    and-long v44, v44, v17

    .line 1183
    .local v44, "b0":J
    invoke-static {v1, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v46

    shr-long v46, v46, v11

    and-long v46, v46, v17

    .line 1184
    .local v46, "b1":J
    invoke-static {v1, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v48

    shr-long v48, v48, v8

    and-long v48, v48, v17

    .line 1185
    .local v48, "b2":J
    invoke-static {v1, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v14

    and-long v50, v50, v17

    .line 1186
    .local v50, "b3":J
    invoke-static {v1, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v52

    shr-long v52, v52, v21

    and-long v52, v52, v17

    .line 1187
    .local v52, "b4":J
    const/16 v7, 0xd

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v54

    shr-long v54, v54, v24

    and-long v54, v54, v17

    .line 1188
    .local v54, "b5":J
    const/16 v7, 0xf

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v28

    and-long v56, v56, v17

    .line 1189
    .local v56, "b6":J
    const/16 v7, 0x12

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v32

    and-long v58, v58, v17

    .line 1190
    .local v58, "b7":J
    const/16 v7, 0x15

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v60

    and-long v60, v60, v17

    .line 1191
    .local v60, "b8":J
    const/16 v7, 0x17

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v62

    shr-long v62, v62, v11

    and-long v62, v62, v17

    .line 1192
    .local v62, "b9":J
    const/16 v7, 0x1a

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v64

    shr-long v64, v64, v8

    and-long v64, v64, v17

    .line 1193
    .local v64, "b10":J
    const/16 v7, 0x1c

    invoke-static {v1, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v66

    shr-long v66, v66, v14

    .line 1194
    .local v66, "b11":J
    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v68

    and-long v68, v68, v17

    .line 1195
    .local v68, "c0":J
    invoke-static {v2, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v70

    shr-long v70, v70, v11

    and-long v70, v70, v17

    .line 1196
    .local v70, "c1":J
    invoke-static {v2, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v72

    shr-long v72, v72, v8

    and-long v72, v72, v17

    .line 1197
    .local v72, "c2":J
    invoke-static {v2, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v74

    shr-long v74, v74, v14

    and-long v74, v74, v17

    .line 1198
    .local v74, "c3":J
    invoke-static {v2, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v76

    shr-long v76, v76, v21

    and-long v76, v76, v17

    .line 1199
    .local v76, "c4":J
    const/16 v7, 0xd

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v78

    shr-long v78, v78, v24

    and-long v78, v78, v17

    .line 1200
    .local v78, "c5":J
    const/16 v7, 0xf

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v80

    shr-long v80, v80, v28

    and-long v80, v80, v17

    .line 1201
    .local v80, "c6":J
    const/16 v7, 0x12

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v82

    shr-long v82, v82, v32

    and-long v82, v82, v17

    .line 1202
    .local v82, "c7":J
    const/16 v7, 0x15

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v84

    and-long v84, v84, v17

    .line 1203
    .local v84, "c8":J
    const/16 v7, 0x17

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v86

    shr-long v86, v86, v11

    and-long v86, v86, v17

    .line 1204
    .local v86, "c9":J
    const/16 v7, 0x1a

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v88

    shr-long v88, v88, v8

    and-long v17, v88, v17

    .line 1205
    .local v17, "c10":J
    const/16 v7, 0x1c

    invoke-static {v2, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v88

    shr-long v88, v88, v14

    .line 1254
    .local v88, "c11":J
    mul-long v90, v4, v44

    add-long v90, v68, v90

    .line 1255
    .local v90, "s0":J
    mul-long v92, v4, v46

    add-long v92, v70, v92

    mul-long v94, v9, v44

    add-long v92, v92, v94

    .line 1256
    .local v92, "s1":J
    mul-long v94, v4, v48

    add-long v94, v72, v94

    mul-long v96, v9, v46

    add-long v94, v94, v96

    mul-long v96, v12, v44

    add-long v94, v94, v96

    .line 1257
    .local v94, "s2":J
    mul-long v96, v4, v50

    add-long v96, v74, v96

    mul-long v98, v9, v48

    add-long v96, v96, v98

    mul-long v98, v12, v46

    add-long v96, v96, v98

    mul-long v98, v15, v44

    add-long v96, v96, v98

    .line 1258
    .local v96, "s3":J
    mul-long v98, v4, v52

    add-long v98, v76, v98

    mul-long v100, v9, v50

    add-long v98, v98, v100

    mul-long v100, v12, v48

    add-long v98, v98, v100

    mul-long v100, v15, v46

    add-long v98, v98, v100

    mul-long v100, v19, v44

    add-long v98, v98, v100

    .line 1259
    .local v98, "s4":J
    mul-long v100, v4, v54

    add-long v100, v78, v100

    mul-long v102, v9, v52

    add-long v100, v100, v102

    mul-long v102, v12, v50

    add-long v100, v100, v102

    mul-long v102, v15, v48

    add-long v100, v100, v102

    mul-long v102, v19, v46

    add-long v100, v100, v102

    mul-long v102, v22, v44

    add-long v100, v100, v102

    .line 1260
    .local v100, "s5":J
    mul-long v102, v4, v56

    add-long v102, v80, v102

    mul-long v104, v9, v54

    add-long v102, v102, v104

    mul-long v104, v12, v52

    add-long v102, v102, v104

    mul-long v104, v15, v50

    add-long v102, v102, v104

    mul-long v104, v19, v48

    add-long v102, v102, v104

    mul-long v104, v22, v46

    add-long v102, v102, v104

    mul-long v104, v26, v44

    add-long v102, v102, v104

    .line 1261
    .local v102, "s6":J
    mul-long v104, v4, v58

    add-long v104, v82, v104

    mul-long v106, v9, v56

    add-long v104, v104, v106

    mul-long v106, v12, v54

    add-long v104, v104, v106

    mul-long v106, v15, v52

    add-long v104, v104, v106

    mul-long v106, v19, v50

    add-long v104, v104, v106

    mul-long v106, v22, v48

    add-long v104, v104, v106

    mul-long v106, v26, v46

    add-long v104, v104, v106

    mul-long v106, v30, v44

    add-long v104, v104, v106

    .line 1262
    .local v104, "s7":J
    mul-long v106, v4, v60

    add-long v106, v84, v106

    mul-long v108, v9, v58

    add-long v106, v106, v108

    mul-long v108, v12, v56

    add-long v106, v106, v108

    mul-long v108, v15, v54

    add-long v106, v106, v108

    mul-long v108, v19, v52

    add-long v106, v106, v108

    mul-long v108, v22, v50

    add-long v106, v106, v108

    mul-long v108, v26, v48

    add-long v106, v106, v108

    mul-long v108, v30, v46

    add-long v106, v106, v108

    mul-long v108, v34, v44

    add-long v106, v106, v108

    .line 1264
    .local v106, "s8":J
    mul-long v108, v4, v62

    add-long v108, v86, v108

    mul-long v110, v9, v60

    add-long v108, v108, v110

    mul-long v110, v12, v58

    add-long v108, v108, v110

    mul-long v110, v15, v56

    add-long v108, v108, v110

    mul-long v110, v19, v54

    add-long v108, v108, v110

    mul-long v110, v22, v52

    add-long v108, v108, v110

    mul-long v110, v26, v50

    add-long v108, v108, v110

    mul-long v110, v30, v48

    add-long v108, v108, v110

    mul-long v110, v34, v46

    add-long v108, v108, v110

    mul-long v110, v37, v44

    add-long v108, v108, v110

    .line 1266
    .local v108, "s9":J
    mul-long v110, v4, v64

    add-long v110, v17, v110

    mul-long v112, v9, v62

    add-long v110, v110, v112

    mul-long v112, v12, v60

    add-long v110, v110, v112

    mul-long v112, v15, v58

    add-long v110, v110, v112

    mul-long v112, v19, v56

    add-long v110, v110, v112

    mul-long v112, v22, v54

    add-long v110, v110, v112

    mul-long v112, v26, v52

    add-long v110, v110, v112

    mul-long v112, v30, v50

    add-long v110, v110, v112

    mul-long v112, v34, v48

    add-long v110, v110, v112

    mul-long v112, v37, v46

    add-long v110, v110, v112

    mul-long v112, v40, v44

    add-long v110, v110, v112

    .line 1268
    .local v110, "s10":J
    mul-long v112, v4, v66

    add-long v112, v88, v112

    mul-long v114, v9, v64

    add-long v112, v112, v114

    mul-long v114, v12, v62

    add-long v112, v112, v114

    mul-long v114, v15, v60

    add-long v112, v112, v114

    mul-long v114, v19, v58

    add-long v112, v112, v114

    mul-long v114, v22, v56

    add-long v112, v112, v114

    mul-long v114, v26, v54

    add-long v112, v112, v114

    mul-long v114, v30, v52

    add-long v112, v112, v114

    mul-long v114, v34, v50

    add-long v112, v112, v114

    mul-long v114, v37, v48

    add-long v112, v112, v114

    mul-long v114, v40, v46

    add-long v112, v112, v114

    mul-long v114, v42, v44

    add-long v112, v112, v114

    .line 1270
    .local v112, "s11":J
    mul-long v114, v9, v66

    mul-long v116, v12, v64

    add-long v114, v114, v116

    mul-long v116, v15, v62

    add-long v114, v114, v116

    mul-long v116, v19, v60

    add-long v114, v114, v116

    mul-long v116, v22, v58

    add-long v114, v114, v116

    mul-long v116, v26, v56

    add-long v114, v114, v116

    mul-long v116, v30, v54

    add-long v114, v114, v116

    mul-long v116, v34, v52

    add-long v114, v114, v116

    mul-long v116, v37, v50

    add-long v114, v114, v116

    mul-long v116, v40, v48

    add-long v114, v114, v116

    mul-long v116, v42, v46

    add-long v114, v114, v116

    .line 1272
    .local v114, "s12":J
    mul-long v116, v12, v66

    mul-long v118, v15, v64

    add-long v116, v116, v118

    mul-long v118, v19, v62

    add-long v116, v116, v118

    mul-long v118, v22, v60

    add-long v116, v116, v118

    mul-long v118, v26, v58

    add-long v116, v116, v118

    mul-long v118, v30, v56

    add-long v116, v116, v118

    mul-long v118, v34, v54

    add-long v116, v116, v118

    mul-long v118, v37, v52

    add-long v116, v116, v118

    mul-long v118, v40, v50

    add-long v116, v116, v118

    mul-long v118, v42, v48

    add-long v116, v116, v118

    .line 1274
    .local v116, "s13":J
    mul-long v118, v15, v66

    mul-long v120, v19, v64

    add-long v118, v118, v120

    mul-long v120, v22, v62

    add-long v118, v118, v120

    mul-long v120, v26, v60

    add-long v118, v118, v120

    mul-long v120, v30, v58

    add-long v118, v118, v120

    mul-long v120, v34, v56

    add-long v118, v118, v120

    mul-long v120, v37, v54

    add-long v118, v118, v120

    mul-long v120, v40, v52

    add-long v118, v118, v120

    mul-long v120, v42, v50

    add-long v118, v118, v120

    .line 1276
    .local v118, "s14":J
    mul-long v120, v19, v66

    mul-long v122, v22, v64

    add-long v120, v120, v122

    mul-long v122, v26, v62

    add-long v120, v120, v122

    mul-long v122, v30, v60

    add-long v120, v120, v122

    mul-long v122, v34, v58

    add-long v120, v120, v122

    mul-long v122, v37, v56

    add-long v120, v120, v122

    mul-long v122, v40, v54

    add-long v120, v120, v122

    mul-long v122, v42, v52

    add-long v120, v120, v122

    .line 1277
    .local v120, "s15":J
    mul-long v122, v22, v66

    mul-long v124, v26, v64

    add-long v122, v122, v124

    mul-long v124, v30, v62

    add-long v122, v122, v124

    mul-long v124, v34, v60

    add-long v122, v122, v124

    mul-long v124, v37, v58

    add-long v122, v122, v124

    mul-long v124, v40, v56

    add-long v122, v122, v124

    mul-long v124, v42, v54

    add-long v122, v122, v124

    .line 1278
    .local v122, "s16":J
    mul-long v124, v26, v66

    mul-long v126, v30, v64

    add-long v124, v124, v126

    mul-long v126, v34, v62

    add-long v124, v124, v126

    mul-long v126, v37, v60

    add-long v124, v124, v126

    mul-long v126, v40, v58

    add-long v124, v124, v126

    mul-long v126, v42, v56

    add-long v124, v124, v126

    .line 1279
    .local v124, "s17":J
    mul-long v126, v30, v66

    mul-long v128, v34, v64

    add-long v126, v126, v128

    mul-long v128, v37, v62

    add-long v126, v126, v128

    mul-long v128, v40, v60

    add-long v126, v126, v128

    mul-long v128, v42, v58

    add-long v126, v126, v128

    .line 1280
    .local v126, "s18":J
    mul-long v128, v34, v66

    mul-long v130, v37, v64

    add-long v128, v128, v130

    mul-long v130, v40, v62

    add-long v128, v128, v130

    mul-long v130, v42, v60

    add-long v128, v128, v130

    .line 1281
    .local v128, "s19":J
    mul-long v130, v37, v66

    mul-long v132, v40, v64

    add-long v130, v130, v132

    mul-long v132, v42, v62

    add-long v130, v130, v132

    .line 1282
    .local v130, "s20":J
    mul-long v132, v40, v66

    mul-long v134, v42, v64

    add-long v132, v132, v134

    .line 1283
    .local v132, "s21":J
    mul-long v134, v42, v66

    .line 1284
    .local v134, "s22":J
    const-wide/16 v136, 0x0

    .line 1286
    .local v136, "s23":J
    const-wide/32 v138, 0x100000

    add-long v140, v90, v138

    const/16 v36, 0x15

    shr-long v140, v140, v36

    .local v140, "carry0":J
    add-long v92, v92, v140

    shl-long v142, v140, v36

    sub-long v90, v90, v142

    .line 1287
    add-long v142, v94, v138

    shr-long v142, v142, v36

    .local v142, "carry2":J
    add-long v96, v96, v142

    shl-long v144, v142, v36

    sub-long v94, v94, v144

    .line 1288
    add-long v144, v98, v138

    shr-long v144, v144, v36

    .local v144, "carry4":J
    add-long v100, v100, v144

    shl-long v146, v144, v36

    sub-long v98, v98, v146

    .line 1289
    add-long v146, v102, v138

    shr-long v146, v146, v36

    .local v146, "carry6":J
    add-long v104, v104, v146

    shl-long v148, v146, v36

    sub-long v102, v102, v148

    .line 1290
    add-long v148, v106, v138

    shr-long v148, v148, v36

    .local v148, "carry8":J
    add-long v108, v108, v148

    shl-long v150, v148, v36

    sub-long v106, v106, v150

    .line 1291
    add-long v150, v110, v138

    shr-long v150, v150, v36

    .local v150, "carry10":J
    add-long v112, v112, v150

    shl-long v152, v150, v36

    sub-long v110, v110, v152

    .line 1292
    add-long v152, v114, v138

    shr-long v152, v152, v36

    .local v152, "carry12":J
    add-long v116, v116, v152

    shl-long v154, v152, v36

    sub-long v114, v114, v154

    .line 1293
    add-long v154, v118, v138

    shr-long v154, v154, v36

    .local v154, "carry14":J
    add-long v120, v120, v154

    shl-long v156, v154, v36

    sub-long v118, v118, v156

    .line 1294
    add-long v156, v122, v138

    shr-long v156, v156, v36

    .local v156, "carry16":J
    add-long v124, v124, v156

    shl-long v158, v156, v36

    sub-long v122, v122, v158

    .line 1295
    add-long v158, v126, v138

    shr-long v158, v158, v36

    .local v158, "carry18":J
    add-long v128, v128, v158

    shl-long v160, v158, v36

    sub-long v126, v126, v160

    .line 1296
    add-long v160, v130, v138

    shr-long v160, v160, v36

    .local v160, "carry20":J
    add-long v132, v132, v160

    shl-long v162, v160, v36

    sub-long v130, v130, v162

    .line 1297
    add-long v162, v134, v138

    shr-long v162, v162, v36

    .local v162, "carry22":J
    add-long v136, v136, v162

    shl-long v164, v162, v36

    sub-long v134, v134, v164

    .line 1299
    add-long v164, v92, v138

    shr-long v164, v164, v36

    .local v164, "carry1":J
    add-long v94, v94, v164

    shl-long v166, v164, v36

    sub-long v92, v92, v166

    .line 1300
    add-long v166, v96, v138

    shr-long v166, v166, v36

    .local v166, "carry3":J
    add-long v98, v98, v166

    shl-long v168, v166, v36

    sub-long v96, v96, v168

    .line 1301
    add-long v168, v100, v138

    shr-long v168, v168, v36

    .local v168, "carry5":J
    add-long v102, v102, v168

    shl-long v170, v168, v36

    sub-long v100, v100, v170

    .line 1302
    add-long v170, v104, v138

    shr-long v170, v170, v36

    .local v170, "carry7":J
    add-long v106, v106, v170

    shl-long v172, v170, v36

    sub-long v104, v104, v172

    .line 1303
    add-long v172, v108, v138

    shr-long v172, v172, v36

    .local v172, "carry9":J
    add-long v110, v110, v172

    shl-long v174, v172, v36

    sub-long v108, v108, v174

    .line 1304
    add-long v174, v112, v138

    shr-long v174, v174, v36

    .local v174, "carry11":J
    add-long v114, v114, v174

    shl-long v176, v174, v36

    sub-long v112, v112, v176

    .line 1305
    add-long v176, v116, v138

    shr-long v176, v176, v36

    .local v176, "carry13":J
    add-long v118, v118, v176

    shl-long v178, v176, v36

    sub-long v116, v116, v178

    .line 1306
    add-long v178, v120, v138

    shr-long v178, v178, v36

    .local v178, "carry15":J
    add-long v122, v122, v178

    shl-long v180, v178, v36

    sub-long v120, v120, v180

    .line 1307
    add-long v180, v124, v138

    shr-long v180, v180, v36

    .local v180, "carry17":J
    add-long v126, v126, v180

    shl-long v182, v180, v36

    sub-long v124, v124, v182

    .line 1308
    add-long v182, v128, v138

    shr-long v182, v182, v36

    .local v182, "carry19":J
    add-long v130, v130, v182

    shl-long v184, v182, v36

    sub-long v128, v128, v184

    .line 1309
    add-long v184, v132, v138

    shr-long v184, v184, v36

    .local v184, "carry21":J
    add-long v134, v134, v184

    shl-long v186, v184, v36

    sub-long v132, v132, v186

    .line 1311
    const-wide/32 v186, 0xa2c13

    mul-long v188, v136, v186

    add-long v112, v112, v188

    .line 1312
    const-wide/32 v188, 0x72d18

    mul-long v190, v136, v188

    add-long v114, v114, v190

    .line 1313
    const-wide/32 v190, 0x9fb67

    mul-long v192, v136, v190

    add-long v116, v116, v192

    .line 1314
    const-wide/32 v192, 0xf39ad

    mul-long v194, v136, v192

    sub-long v118, v118, v194

    .line 1315
    const-wide/32 v194, 0x215d1

    mul-long v196, v136, v194

    add-long v120, v120, v196

    .line 1316
    const-wide/32 v196, 0xa6f7d

    mul-long v198, v136, v196

    sub-long v122, v122, v198

    .line 1319
    mul-long v198, v134, v186

    add-long v110, v110, v198

    .line 1320
    mul-long v198, v134, v188

    add-long v112, v112, v198

    .line 1321
    mul-long v198, v134, v190

    add-long v114, v114, v198

    .line 1322
    mul-long v198, v134, v192

    sub-long v116, v116, v198

    .line 1323
    mul-long v198, v134, v194

    add-long v118, v118, v198

    .line 1324
    mul-long v198, v134, v196

    sub-long v120, v120, v198

    .line 1327
    mul-long v198, v132, v186

    add-long v108, v108, v198

    .line 1328
    mul-long v198, v132, v188

    add-long v110, v110, v198

    .line 1329
    mul-long v198, v132, v190

    add-long v112, v112, v198

    .line 1330
    mul-long v198, v132, v192

    sub-long v114, v114, v198

    .line 1331
    mul-long v198, v132, v194

    add-long v116, v116, v198

    .line 1332
    mul-long v198, v132, v196

    sub-long v118, v118, v198

    .line 1335
    mul-long v198, v130, v186

    add-long v106, v106, v198

    .line 1336
    mul-long v198, v130, v188

    add-long v108, v108, v198

    .line 1337
    mul-long v198, v130, v190

    add-long v110, v110, v198

    .line 1338
    mul-long v198, v130, v192

    sub-long v112, v112, v198

    .line 1339
    mul-long v198, v130, v194

    add-long v114, v114, v198

    .line 1340
    mul-long v198, v130, v196

    sub-long v116, v116, v198

    .line 1343
    mul-long v198, v128, v186

    add-long v104, v104, v198

    .line 1344
    mul-long v198, v128, v188

    add-long v106, v106, v198

    .line 1345
    mul-long v198, v128, v190

    add-long v108, v108, v198

    .line 1346
    mul-long v198, v128, v192

    sub-long v110, v110, v198

    .line 1347
    mul-long v198, v128, v194

    add-long v112, v112, v198

    .line 1348
    mul-long v198, v128, v196

    sub-long v114, v114, v198

    .line 1351
    mul-long v198, v126, v186

    add-long v102, v102, v198

    .line 1352
    mul-long v198, v126, v188

    add-long v104, v104, v198

    .line 1353
    mul-long v198, v126, v190

    add-long v106, v106, v198

    .line 1354
    mul-long v198, v126, v192

    sub-long v108, v108, v198

    .line 1355
    mul-long v198, v126, v194

    add-long v110, v110, v198

    .line 1356
    mul-long v198, v126, v196

    sub-long v112, v112, v198

    .line 1359
    add-long v198, v102, v138

    const/16 v36, 0x15

    shr-long v146, v198, v36

    add-long v104, v104, v146

    shl-long v198, v146, v36

    sub-long v102, v102, v198

    .line 1360
    add-long v198, v106, v138

    shr-long v148, v198, v36

    add-long v108, v108, v148

    shl-long v198, v148, v36

    sub-long v106, v106, v198

    .line 1361
    add-long v198, v110, v138

    shr-long v150, v198, v36

    add-long v112, v112, v150

    shl-long v198, v150, v36

    sub-long v110, v110, v198

    .line 1362
    add-long v198, v114, v138

    shr-long v152, v198, v36

    add-long v116, v116, v152

    shl-long v198, v152, v36

    sub-long v114, v114, v198

    .line 1363
    add-long v198, v118, v138

    shr-long v154, v198, v36

    add-long v120, v120, v154

    shl-long v198, v154, v36

    sub-long v118, v118, v198

    .line 1364
    add-long v198, v122, v138

    shr-long v156, v198, v36

    add-long v124, v124, v156

    shl-long v198, v156, v36

    sub-long v122, v122, v198

    .line 1366
    add-long v198, v104, v138

    shr-long v170, v198, v36

    add-long v106, v106, v170

    shl-long v198, v170, v36

    sub-long v104, v104, v198

    .line 1367
    add-long v198, v108, v138

    shr-long v172, v198, v36

    add-long v110, v110, v172

    shl-long v198, v172, v36

    sub-long v108, v108, v198

    .line 1368
    add-long v198, v112, v138

    shr-long v174, v198, v36

    add-long v114, v114, v174

    shl-long v198, v174, v36

    sub-long v112, v112, v198

    .line 1369
    add-long v198, v116, v138

    shr-long v176, v198, v36

    add-long v118, v118, v176

    shl-long v198, v176, v36

    sub-long v116, v116, v198

    .line 1370
    add-long v198, v120, v138

    shr-long v178, v198, v36

    add-long v122, v122, v178

    shl-long v198, v178, v36

    sub-long v120, v120, v198

    .line 1372
    mul-long v198, v124, v186

    add-long v100, v100, v198

    .line 1373
    mul-long v198, v124, v188

    add-long v102, v102, v198

    .line 1374
    mul-long v198, v124, v190

    add-long v104, v104, v198

    .line 1375
    mul-long v198, v124, v192

    sub-long v106, v106, v198

    .line 1376
    mul-long v198, v124, v194

    add-long v108, v108, v198

    .line 1377
    mul-long v198, v124, v196

    sub-long v110, v110, v198

    .line 1380
    mul-long v198, v122, v186

    add-long v98, v98, v198

    .line 1381
    mul-long v198, v122, v188

    add-long v100, v100, v198

    .line 1382
    mul-long v198, v122, v190

    add-long v102, v102, v198

    .line 1383
    mul-long v198, v122, v192

    sub-long v104, v104, v198

    .line 1384
    mul-long v198, v122, v194

    add-long v106, v106, v198

    .line 1385
    mul-long v198, v122, v196

    sub-long v108, v108, v198

    .line 1388
    mul-long v198, v120, v186

    add-long v96, v96, v198

    .line 1389
    mul-long v198, v120, v188

    add-long v98, v98, v198

    .line 1390
    mul-long v198, v120, v190

    add-long v100, v100, v198

    .line 1391
    mul-long v198, v120, v192

    sub-long v102, v102, v198

    .line 1392
    mul-long v198, v120, v194

    add-long v104, v104, v198

    .line 1393
    mul-long v198, v120, v196

    sub-long v106, v106, v198

    .line 1396
    mul-long v198, v118, v186

    add-long v94, v94, v198

    .line 1397
    mul-long v198, v118, v188

    add-long v96, v96, v198

    .line 1398
    mul-long v198, v118, v190

    add-long v98, v98, v198

    .line 1399
    mul-long v198, v118, v192

    sub-long v100, v100, v198

    .line 1400
    mul-long v198, v118, v194

    add-long v102, v102, v198

    .line 1401
    mul-long v198, v118, v196

    sub-long v104, v104, v198

    .line 1404
    mul-long v198, v116, v186

    add-long v92, v92, v198

    .line 1405
    mul-long v198, v116, v188

    add-long v94, v94, v198

    .line 1406
    mul-long v198, v116, v190

    add-long v96, v96, v198

    .line 1407
    mul-long v198, v116, v192

    sub-long v98, v98, v198

    .line 1408
    mul-long v198, v116, v194

    add-long v100, v100, v198

    .line 1409
    mul-long v198, v116, v196

    sub-long v102, v102, v198

    .line 1412
    mul-long v198, v114, v186

    add-long v90, v90, v198

    .line 1413
    mul-long v198, v114, v188

    add-long v92, v92, v198

    .line 1414
    mul-long v198, v114, v190

    add-long v94, v94, v198

    .line 1415
    mul-long v198, v114, v192

    sub-long v96, v96, v198

    .line 1416
    mul-long v198, v114, v194

    add-long v98, v98, v198

    .line 1417
    mul-long v198, v114, v196

    sub-long v100, v100, v198

    .line 1418
    const-wide/16 v114, 0x0

    .line 1420
    add-long v198, v90, v138

    const/16 v36, 0x15

    shr-long v140, v198, v36

    add-long v92, v92, v140

    shl-long v198, v140, v36

    sub-long v90, v90, v198

    .line 1421
    add-long v198, v94, v138

    shr-long v142, v198, v36

    add-long v96, v96, v142

    shl-long v198, v142, v36

    sub-long v94, v94, v198

    .line 1422
    add-long v198, v98, v138

    shr-long v144, v198, v36

    add-long v100, v100, v144

    shl-long v198, v144, v36

    sub-long v98, v98, v198

    .line 1423
    add-long v198, v102, v138

    shr-long v146, v198, v36

    add-long v104, v104, v146

    shl-long v198, v146, v36

    sub-long v102, v102, v198

    .line 1424
    add-long v198, v106, v138

    shr-long v148, v198, v36

    add-long v108, v108, v148

    shl-long v198, v148, v36

    sub-long v106, v106, v198

    .line 1425
    add-long v198, v110, v138

    shr-long v150, v198, v36

    add-long v112, v112, v150

    shl-long v198, v150, v36

    sub-long v110, v110, v198

    .line 1427
    add-long v198, v92, v138

    shr-long v164, v198, v36

    add-long v94, v94, v164

    shl-long v198, v164, v36

    sub-long v92, v92, v198

    .line 1428
    add-long v198, v96, v138

    shr-long v166, v198, v36

    add-long v98, v98, v166

    shl-long v198, v166, v36

    sub-long v96, v96, v198

    .line 1429
    add-long v198, v100, v138

    shr-long v168, v198, v36

    add-long v102, v102, v168

    shl-long v198, v168, v36

    sub-long v100, v100, v198

    .line 1430
    add-long v198, v104, v138

    shr-long v170, v198, v36

    add-long v106, v106, v170

    shl-long v198, v170, v36

    sub-long v104, v104, v198

    .line 1431
    add-long v198, v108, v138

    shr-long v172, v198, v36

    add-long v110, v110, v172

    shl-long v198, v172, v36

    sub-long v108, v108, v198

    .line 1432
    add-long v138, v112, v138

    shr-long v138, v138, v36

    .end local v174    # "carry11":J
    .local v138, "carry11":J
    add-long v114, v114, v138

    shl-long v174, v138, v36

    sub-long v112, v112, v174

    .line 1434
    mul-long v174, v114, v186

    add-long v90, v90, v174

    .line 1435
    mul-long v174, v114, v188

    add-long v92, v92, v174

    .line 1436
    mul-long v174, v114, v190

    add-long v94, v94, v174

    .line 1437
    mul-long v174, v114, v192

    sub-long v96, v96, v174

    .line 1438
    mul-long v174, v114, v194

    add-long v98, v98, v174

    .line 1439
    mul-long v174, v114, v196

    sub-long v100, v100, v174

    .line 1440
    const-wide/16 v114, 0x0

    .line 1442
    const/16 v36, 0x15

    shr-long v140, v90, v36

    add-long v92, v92, v140

    shl-long v174, v140, v36

    sub-long v90, v90, v174

    .line 1443
    shr-long v164, v92, v36

    add-long v94, v94, v164

    shl-long v174, v164, v36

    sub-long v92, v92, v174

    .line 1444
    shr-long v142, v94, v36

    add-long v96, v96, v142

    shl-long v174, v142, v36

    sub-long v94, v94, v174

    .line 1445
    shr-long v166, v96, v36

    add-long v98, v98, v166

    shl-long v174, v166, v36

    sub-long v96, v96, v174

    .line 1446
    shr-long v144, v98, v36

    add-long v100, v100, v144

    shl-long v174, v144, v36

    sub-long v98, v98, v174

    .line 1447
    shr-long v168, v100, v36

    add-long v102, v102, v168

    shl-long v174, v168, v36

    sub-long v100, v100, v174

    .line 1448
    shr-long v146, v102, v36

    add-long v104, v104, v146

    shl-long v174, v146, v36

    sub-long v102, v102, v174

    .line 1449
    shr-long v170, v104, v36

    add-long v106, v106, v170

    shl-long v174, v170, v36

    sub-long v104, v104, v174

    .line 1450
    shr-long v148, v106, v36

    add-long v108, v108, v148

    shl-long v174, v148, v36

    sub-long v106, v106, v174

    .line 1451
    shr-long v172, v108, v36

    add-long v110, v110, v172

    shl-long v174, v172, v36

    sub-long v108, v108, v174

    .line 1452
    shr-long v150, v110, v36

    add-long v112, v112, v150

    shl-long v174, v150, v36

    sub-long v110, v110, v174

    .line 1453
    shr-long v138, v112, v36

    add-long v114, v114, v138

    shl-long v174, v138, v36

    sub-long v112, v112, v174

    .line 1455
    mul-long v186, v186, v114

    add-long v90, v90, v186

    .line 1456
    mul-long v188, v188, v114

    add-long v92, v92, v188

    .line 1457
    mul-long v190, v190, v114

    add-long v94, v94, v190

    .line 1458
    mul-long v192, v192, v114

    sub-long v96, v96, v192

    .line 1459
    mul-long v194, v194, v114

    add-long v98, v98, v194

    .line 1460
    mul-long v196, v196, v114

    sub-long v100, v100, v196

    .line 1463
    const/16 v36, 0x15

    shr-long v140, v90, v36

    add-long v92, v92, v140

    shl-long v174, v140, v36

    move v7, v3

    move-wide/from16 v186, v4

    .end local v4    # "a0":J
    .local v186, "a0":J
    sub-long v3, v90, v174

    .line 1464
    .end local v90    # "s0":J
    .local v3, "s0":J
    shr-long v90, v92, v36

    .end local v164    # "carry1":J
    .local v90, "carry1":J
    add-long v94, v94, v90

    shl-long v164, v90, v36

    sub-long v92, v92, v164

    .line 1465
    shr-long v142, v94, v36

    add-long v96, v96, v142

    shl-long v164, v142, v36

    sub-long v94, v94, v164

    .line 1466
    shr-long v164, v96, v36

    .end local v166    # "carry3":J
    .local v164, "carry3":J
    add-long v98, v98, v164

    shl-long v166, v164, v36

    sub-long v96, v96, v166

    .line 1467
    shr-long v144, v98, v36

    add-long v100, v100, v144

    shl-long v166, v144, v36

    sub-long v98, v98, v166

    .line 1468
    shr-long v166, v100, v36

    .end local v168    # "carry5":J
    .local v166, "carry5":J
    add-long v102, v102, v166

    shl-long v168, v166, v36

    sub-long v100, v100, v168

    .line 1469
    shr-long v146, v102, v36

    add-long v104, v104, v146

    shl-long v168, v146, v36

    sub-long v102, v102, v168

    .line 1470
    shr-long v168, v104, v36

    .end local v170    # "carry7":J
    .local v168, "carry7":J
    add-long v106, v106, v168

    shl-long v170, v168, v36

    sub-long v104, v104, v170

    .line 1471
    shr-long v148, v106, v36

    add-long v108, v108, v148

    shl-long v170, v148, v36

    move v5, v6

    move/from16 v174, v7

    sub-long v6, v106, v170

    .line 1472
    .end local v106    # "s8":J
    .local v6, "s8":J
    shr-long v106, v108, v36

    .end local v172    # "carry9":J
    .local v106, "carry9":J
    add-long v110, v110, v106

    shl-long v170, v106, v36

    sub-long v108, v108, v170

    .line 1473
    shr-long v150, v110, v36

    add-long v112, v112, v150

    shl-long v170, v150, v36

    sub-long v110, v110, v170

    .line 1475
    move/from16 v170, v5

    long-to-int v5, v3

    int-to-byte v5, v5

    aput-byte v5, p0, v174

    .line 1476
    const/16 v5, 0x8

    move/from16 v171, v8

    move-wide/from16 v172, v9

    .end local v9    # "a1":J
    .local v172, "a1":J
    shr-long v8, v3, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v24

    .line 1477
    const/16 v5, 0x10

    shr-long v8, v3, v5

    shl-long v174, v92, v11

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v171

    .line 1478
    shr-long v8, v92, v32

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v32

    .line 1479
    const/16 v5, 0xb

    shr-long v8, v92, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v21

    .line 1480
    const/16 v5, 0x13

    shr-long v8, v92, v5

    shl-long v174, v94, v171

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v11

    .line 1481
    shr-long v8, v94, v28

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v28

    .line 1482
    const/16 v5, 0xe

    shr-long v8, v94, v5

    shl-long v174, v96, v14

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v14

    .line 1483
    shr-long v8, v96, v24

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x8

    aput-byte v5, p0, v8

    .line 1484
    const/16 v5, 0x9

    shr-long v8, v96, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x9

    aput-byte v5, p0, v8

    .line 1485
    const/16 v5, 0x11

    shr-long v8, v96, v5

    shl-long v174, v98, v21

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v170

    .line 1486
    shr-long v8, v98, v21

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0xb

    aput-byte v5, p0, v8

    .line 1487
    const/16 v5, 0xc

    shr-long v8, v98, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0xc

    aput-byte v5, p0, v8

    .line 1488
    const/16 v5, 0x14

    shr-long v8, v98, v5

    shl-long v174, v100, v24

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v25, 0xd

    aput-byte v5, p0, v25

    .line 1489
    shr-long v8, v100, v14

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0xe

    aput-byte v5, p0, v8

    .line 1490
    const/16 v29, 0xf

    shr-long v8, v100, v29

    shl-long v174, v102, v28

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v29

    .line 1491
    shr-long v8, v102, v171

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x10

    aput-byte v5, p0, v8

    .line 1492
    shr-long v8, v102, v170

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x11

    aput-byte v5, p0, v8

    .line 1493
    const/16 v33, 0x12

    shr-long v8, v102, v33

    shl-long v174, v104, v32

    or-long v8, v8, v174

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, p0, v33

    .line 1494
    shr-long v8, v104, v11

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x13

    aput-byte v5, p0, v8

    .line 1495
    const/16 v25, 0xd

    shr-long v8, v104, v25

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x14

    aput-byte v5, p0, v8

    .line 1496
    long-to-int v5, v6

    int-to-byte v5, v5

    const/16 v36, 0x15

    aput-byte v5, p0, v36

    .line 1497
    const/16 v5, 0x8

    shr-long v8, v6, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x16

    aput-byte v5, p0, v8

    .line 1498
    const/16 v5, 0x10

    shr-long v8, v6, v5

    shl-long v10, v108, v11

    or-long/2addr v8, v10

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v39, 0x17

    aput-byte v5, p0, v39

    .line 1499
    shr-long v8, v108, v32

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x18

    aput-byte v5, p0, v8

    .line 1500
    const/16 v5, 0xb

    shr-long v8, v108, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x19

    aput-byte v5, p0, v8

    .line 1501
    const/16 v5, 0x13

    shr-long v8, v108, v5

    shl-long v10, v110, v171

    or-long/2addr v8, v10

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1a

    aput-byte v5, p0, v8

    .line 1502
    shr-long v8, v110, v28

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1b

    aput-byte v5, p0, v8

    .line 1503
    const/16 v5, 0xe

    shr-long v8, v110, v5

    shl-long v10, v112, v14

    or-long/2addr v8, v10

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1c

    aput-byte v5, p0, v8

    .line 1504
    shr-long v8, v112, v24

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1d

    aput-byte v5, p0, v8

    .line 1505
    const/16 v5, 0x9

    shr-long v8, v112, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1e

    aput-byte v5, p0, v8

    .line 1506
    const/16 v5, 0x11

    shr-long v8, v112, v5

    long-to-int v5, v8

    int-to-byte v5, v5

    const/16 v8, 0x1f

    aput-byte v5, p0, v8

    .line 1507
    return-void
.end method

.method private static neg([J[J)V
    .locals 3
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 763
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 764
    aget-wide v1, p1, v0

    neg-long v1, v1

    aput-wide v1, p0, v0

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 766
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static pow2252m3([J[J)V
    .locals 7
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 772
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 773
    .local v1, "t0":[J
    new-array v2, v0, [J

    .line 774
    .local v2, "t1":[J
    new-array v3, v0, [J

    .line 777
    .local v3, "t2":[J
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 780
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 781
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 782
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 781
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 786
    .end local v4    # "i":I
    :cond_0
    invoke-static {v2, p1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 789
    invoke-static {v1, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 792
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 795
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 798
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 799
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1
    const/4 v6, 0x5

    if-ge v4, v6, :cond_1

    .line 800
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 799
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 804
    .end local v4    # "i":I
    :cond_1
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 807
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 808
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v0, :cond_2

    .line 809
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 808
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 813
    .end local v4    # "i":I
    :cond_2
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 816
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 817
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_3
    const/16 v6, 0x14

    if-ge v4, v6, :cond_3

    .line 818
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 817
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 822
    .end local v4    # "i":I
    :cond_3
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 825
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 826
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v0, :cond_4

    .line 827
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 826
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 831
    .end local v4    # "i":I
    :cond_4
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 834
    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 835
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_5
    const/16 v4, 0x32

    if-ge v0, v4, :cond_5

    .line 836
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 835
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 840
    .end local v0    # "i":I
    :cond_5
    invoke-static {v2, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 843
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 844
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_6
    const/16 v6, 0x64

    if-ge v0, v6, :cond_6

    .line 845
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 844
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 849
    .end local v0    # "i":I
    :cond_6
    invoke-static {v2, v3, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 852
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 853
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v4, :cond_7

    .line 854
    invoke-static {v2, v2}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 858
    .end local v0    # "i":I
    :cond_7
    invoke-static {v1, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 861
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 862
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_8
    if-ge v0, v5, :cond_8

    .line 863
    invoke-static {v1, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 862
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 867
    .end local v0    # "i":I
    :cond_8
    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 868
    return-void
.end method

.method private static reduce([B)V
    .locals 112
    .param p0, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 907
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v1

    const-wide/32 v3, 0x1fffff

    and-long/2addr v1, v3

    .line 908
    .local v1, "s0":J
    const/4 v5, 0x2

    invoke-static {v0, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v6

    const/4 v8, 0x5

    shr-long/2addr v6, v8

    and-long/2addr v6, v3

    .line 909
    .local v6, "s1":J
    invoke-static {v0, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v9

    shr-long/2addr v9, v5

    and-long/2addr v9, v3

    .line 910
    .local v9, "s2":J
    const/4 v11, 0x7

    invoke-static {v0, v11}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v12

    shr-long/2addr v12, v11

    and-long/2addr v12, v3

    .line 911
    .local v12, "s3":J
    const/16 v14, 0xa

    invoke-static {v0, v14}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v15

    const/16 v17, 0x4

    shr-long v15, v15, v17

    and-long/2addr v15, v3

    .line 912
    .local v15, "s4":J
    move-wide/from16 v18, v3

    const/16 v3, 0xd

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v20

    const/4 v4, 0x1

    shr-long v20, v20, v4

    and-long v20, v20, v18

    .line 913
    .local v20, "s5":J
    move/from16 v22, v3

    const/16 v3, 0xf

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v23

    const/16 v25, 0x6

    shr-long v23, v23, v25

    and-long v23, v23, v18

    .line 914
    .local v23, "s6":J
    move/from16 v26, v3

    const/16 v3, 0x12

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v27

    const/16 v29, 0x3

    shr-long v27, v27, v29

    and-long v27, v27, v18

    .line 915
    .local v27, "s7":J
    move/from16 v30, v3

    const/16 v3, 0x15

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v31

    and-long v31, v31, v18

    .line 916
    .local v31, "s8":J
    move/from16 v33, v3

    const/16 v3, 0x17

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v34

    shr-long v34, v34, v8

    and-long v34, v34, v18

    .line 917
    .local v34, "s9":J
    const/16 v3, 0x1a

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v36

    shr-long v36, v36, v5

    and-long v36, v36, v18

    .line 918
    .local v36, "s10":J
    const/16 v3, 0x1c

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v38

    shr-long v38, v38, v11

    and-long v38, v38, v18

    .line 919
    .local v38, "s11":J
    const/16 v3, 0x1f

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v40

    shr-long v40, v40, v17

    and-long v40, v40, v18

    .line 920
    .local v40, "s12":J
    const/16 v3, 0x22

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v42

    shr-long v42, v42, v4

    and-long v42, v42, v18

    .line 921
    .local v42, "s13":J
    const/16 v3, 0x24

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v44

    shr-long v44, v44, v25

    and-long v44, v44, v18

    .line 922
    .local v44, "s14":J
    const/16 v3, 0x27

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v46

    shr-long v46, v46, v29

    and-long v46, v46, v18

    .line 923
    .local v46, "s15":J
    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v48

    and-long v48, v48, v18

    .line 924
    .local v48, "s16":J
    const/16 v3, 0x2c

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v50

    shr-long v50, v50, v8

    and-long v50, v50, v18

    .line 925
    .local v50, "s17":J
    const/16 v3, 0x2f

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v52

    shr-long v52, v52, v5

    and-long v52, v52, v18

    .line 926
    .local v52, "s18":J
    const/16 v3, 0x31

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v54

    shr-long v54, v54, v11

    and-long v54, v54, v18

    .line 927
    .local v54, "s19":J
    const/16 v3, 0x34

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v56

    shr-long v56, v56, v17

    and-long v56, v56, v18

    .line 928
    .local v56, "s20":J
    const/16 v3, 0x37

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load3([BI)J

    move-result-wide v58

    shr-long v58, v58, v4

    and-long v58, v58, v18

    .line 929
    .local v58, "s21":J
    const/16 v3, 0x39

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v25

    and-long v18, v60, v18

    .line 930
    .local v18, "s22":J
    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->load4([BI)J

    move-result-wide v60

    shr-long v60, v60, v29

    .line 953
    .local v60, "s23":J
    const-wide/32 v62, 0xa2c13

    mul-long v64, v60, v62

    add-long v38, v38, v64

    .line 954
    const-wide/32 v64, 0x72d18

    mul-long v66, v60, v64

    add-long v40, v40, v66

    .line 955
    const-wide/32 v66, 0x9fb67

    mul-long v68, v60, v66

    add-long v42, v42, v68

    .line 956
    const-wide/32 v68, 0xf39ad

    mul-long v70, v60, v68

    sub-long v44, v44, v70

    .line 957
    const-wide/32 v70, 0x215d1

    mul-long v72, v60, v70

    add-long v46, v46, v72

    .line 958
    const-wide/32 v72, 0xa6f7d

    mul-long v74, v60, v72

    sub-long v48, v48, v74

    .line 961
    mul-long v74, v18, v62

    add-long v36, v36, v74

    .line 962
    mul-long v74, v18, v64

    add-long v38, v38, v74

    .line 963
    mul-long v74, v18, v66

    add-long v40, v40, v74

    .line 964
    mul-long v74, v18, v68

    sub-long v42, v42, v74

    .line 965
    mul-long v74, v18, v70

    add-long v44, v44, v74

    .line 966
    mul-long v74, v18, v72

    sub-long v46, v46, v74

    .line 969
    mul-long v74, v58, v62

    add-long v34, v34, v74

    .line 970
    mul-long v74, v58, v64

    add-long v36, v36, v74

    .line 971
    mul-long v74, v58, v66

    add-long v38, v38, v74

    .line 972
    mul-long v74, v58, v68

    sub-long v40, v40, v74

    .line 973
    mul-long v74, v58, v70

    add-long v42, v42, v74

    .line 974
    mul-long v74, v58, v72

    sub-long v44, v44, v74

    .line 977
    mul-long v74, v56, v62

    add-long v31, v31, v74

    .line 978
    mul-long v74, v56, v64

    add-long v34, v34, v74

    .line 979
    mul-long v74, v56, v66

    add-long v36, v36, v74

    .line 980
    mul-long v74, v56, v68

    sub-long v38, v38, v74

    .line 981
    mul-long v74, v56, v70

    add-long v40, v40, v74

    .line 982
    mul-long v74, v56, v72

    sub-long v42, v42, v74

    .line 985
    mul-long v74, v54, v62

    add-long v27, v27, v74

    .line 986
    mul-long v74, v54, v64

    add-long v31, v31, v74

    .line 987
    mul-long v74, v54, v66

    add-long v34, v34, v74

    .line 988
    mul-long v74, v54, v68

    sub-long v36, v36, v74

    .line 989
    mul-long v74, v54, v70

    add-long v38, v38, v74

    .line 990
    mul-long v74, v54, v72

    sub-long v40, v40, v74

    .line 993
    mul-long v74, v52, v62

    add-long v23, v23, v74

    .line 994
    mul-long v74, v52, v64

    add-long v27, v27, v74

    .line 995
    mul-long v74, v52, v66

    add-long v31, v31, v74

    .line 996
    mul-long v74, v52, v68

    sub-long v34, v34, v74

    .line 997
    mul-long v74, v52, v70

    add-long v36, v36, v74

    .line 998
    mul-long v74, v52, v72

    sub-long v38, v38, v74

    .line 1002
    const-wide/32 v74, 0x100000

    add-long v76, v23, v74

    shr-long v76, v76, v33

    .local v76, "carry6":J
    add-long v27, v27, v76

    shl-long v78, v76, v33

    sub-long v23, v23, v78

    .line 1003
    add-long v78, v31, v74

    shr-long v78, v78, v33

    .local v78, "carry8":J
    add-long v34, v34, v78

    shl-long v80, v78, v33

    sub-long v31, v31, v80

    .line 1004
    add-long v80, v36, v74

    shr-long v80, v80, v33

    .local v80, "carry10":J
    add-long v38, v38, v80

    shl-long v82, v80, v33

    sub-long v36, v36, v82

    .line 1005
    add-long v82, v40, v74

    shr-long v82, v82, v33

    .local v82, "carry12":J
    add-long v42, v42, v82

    shl-long v84, v82, v33

    sub-long v40, v40, v84

    .line 1006
    add-long v84, v44, v74

    shr-long v84, v84, v33

    .local v84, "carry14":J
    add-long v46, v46, v84

    shl-long v86, v84, v33

    sub-long v44, v44, v86

    .line 1007
    add-long v86, v48, v74

    shr-long v86, v86, v33

    .local v86, "carry16":J
    add-long v50, v50, v86

    shl-long v88, v86, v33

    sub-long v48, v48, v88

    .line 1009
    add-long v88, v27, v74

    shr-long v88, v88, v33

    .local v88, "carry7":J
    add-long v31, v31, v88

    shl-long v90, v88, v33

    sub-long v27, v27, v90

    .line 1010
    add-long v90, v34, v74

    shr-long v90, v90, v33

    .local v90, "carry9":J
    add-long v36, v36, v90

    shl-long v92, v90, v33

    sub-long v34, v34, v92

    .line 1011
    add-long v92, v38, v74

    shr-long v92, v92, v33

    .local v92, "carry11":J
    add-long v40, v40, v92

    shl-long v94, v92, v33

    sub-long v38, v38, v94

    .line 1012
    add-long v94, v42, v74

    shr-long v94, v94, v33

    .local v94, "carry13":J
    add-long v44, v44, v94

    shl-long v96, v94, v33

    sub-long v42, v42, v96

    .line 1013
    add-long v96, v46, v74

    shr-long v96, v96, v33

    .local v96, "carry15":J
    add-long v48, v48, v96

    shl-long v98, v96, v33

    sub-long v46, v46, v98

    .line 1016
    mul-long v98, v50, v62

    add-long v20, v20, v98

    .line 1017
    mul-long v98, v50, v64

    add-long v23, v23, v98

    .line 1018
    mul-long v98, v50, v66

    add-long v27, v27, v98

    .line 1019
    mul-long v98, v50, v68

    sub-long v31, v31, v98

    .line 1020
    mul-long v98, v50, v70

    add-long v34, v34, v98

    .line 1021
    mul-long v98, v50, v72

    sub-long v36, v36, v98

    .line 1024
    mul-long v98, v48, v62

    add-long v15, v15, v98

    .line 1025
    mul-long v98, v48, v64

    add-long v20, v20, v98

    .line 1026
    mul-long v98, v48, v66

    add-long v23, v23, v98

    .line 1027
    mul-long v98, v48, v68

    sub-long v27, v27, v98

    .line 1028
    mul-long v98, v48, v70

    add-long v31, v31, v98

    .line 1029
    mul-long v98, v48, v72

    sub-long v34, v34, v98

    .line 1032
    mul-long v98, v46, v62

    add-long v12, v12, v98

    .line 1033
    mul-long v98, v46, v64

    add-long v15, v15, v98

    .line 1034
    mul-long v98, v46, v66

    add-long v20, v20, v98

    .line 1035
    mul-long v98, v46, v68

    sub-long v23, v23, v98

    .line 1036
    mul-long v98, v46, v70

    add-long v27, v27, v98

    .line 1037
    mul-long v98, v46, v72

    sub-long v31, v31, v98

    .line 1040
    mul-long v98, v44, v62

    add-long v9, v9, v98

    .line 1041
    mul-long v98, v44, v64

    add-long v12, v12, v98

    .line 1042
    mul-long v98, v44, v66

    add-long v15, v15, v98

    .line 1043
    mul-long v98, v44, v68

    sub-long v20, v20, v98

    .line 1044
    mul-long v98, v44, v70

    add-long v23, v23, v98

    .line 1045
    mul-long v98, v44, v72

    sub-long v27, v27, v98

    .line 1048
    mul-long v98, v42, v62

    add-long v6, v6, v98

    .line 1049
    mul-long v98, v42, v64

    add-long v9, v9, v98

    .line 1050
    mul-long v98, v42, v66

    add-long v12, v12, v98

    .line 1051
    mul-long v98, v42, v68

    sub-long v15, v15, v98

    .line 1052
    mul-long v98, v42, v70

    add-long v20, v20, v98

    .line 1053
    mul-long v98, v42, v72

    sub-long v23, v23, v98

    .line 1056
    mul-long v98, v40, v62

    add-long v1, v1, v98

    .line 1057
    mul-long v98, v40, v64

    add-long v6, v6, v98

    .line 1058
    mul-long v98, v40, v66

    add-long v9, v9, v98

    .line 1059
    mul-long v98, v40, v68

    sub-long v12, v12, v98

    .line 1060
    mul-long v98, v40, v70

    add-long v15, v15, v98

    .line 1061
    mul-long v98, v40, v72

    sub-long v20, v20, v98

    .line 1062
    const-wide/16 v40, 0x0

    .line 1065
    add-long v98, v1, v74

    shr-long v98, v98, v33

    .local v98, "carry0":J
    add-long v6, v6, v98

    shl-long v100, v98, v33

    sub-long v1, v1, v100

    .line 1066
    add-long v100, v9, v74

    shr-long v100, v100, v33

    .local v100, "carry2":J
    add-long v12, v12, v100

    shl-long v102, v100, v33

    sub-long v9, v9, v102

    .line 1067
    add-long v102, v15, v74

    shr-long v102, v102, v33

    .local v102, "carry4":J
    add-long v20, v20, v102

    shl-long v104, v102, v33

    sub-long v15, v15, v104

    .line 1068
    add-long v104, v23, v74

    shr-long v76, v104, v33

    add-long v27, v27, v76

    shl-long v104, v76, v33

    sub-long v23, v23, v104

    .line 1069
    add-long v104, v31, v74

    shr-long v78, v104, v33

    add-long v34, v34, v78

    shl-long v104, v78, v33

    sub-long v31, v31, v104

    .line 1070
    add-long v104, v36, v74

    shr-long v80, v104, v33

    add-long v38, v38, v80

    shl-long v104, v80, v33

    sub-long v36, v36, v104

    .line 1072
    add-long v104, v6, v74

    shr-long v104, v104, v33

    .local v104, "carry1":J
    add-long v9, v9, v104

    shl-long v106, v104, v33

    sub-long v6, v6, v106

    .line 1073
    add-long v106, v12, v74

    shr-long v106, v106, v33

    .local v106, "carry3":J
    add-long v15, v15, v106

    shl-long v108, v106, v33

    sub-long v12, v12, v108

    .line 1074
    add-long v108, v20, v74

    shr-long v108, v108, v33

    .local v108, "carry5":J
    add-long v23, v23, v108

    shl-long v110, v108, v33

    sub-long v20, v20, v110

    .line 1075
    add-long v110, v27, v74

    shr-long v88, v110, v33

    add-long v31, v31, v88

    shl-long v110, v88, v33

    sub-long v27, v27, v110

    .line 1076
    add-long v110, v34, v74

    shr-long v90, v110, v33

    add-long v36, v36, v90

    shl-long v110, v90, v33

    sub-long v34, v34, v110

    .line 1077
    add-long v74, v38, v74

    shr-long v74, v74, v33

    .end local v92    # "carry11":J
    .local v74, "carry11":J
    add-long v40, v40, v74

    shl-long v92, v74, v33

    sub-long v38, v38, v92

    .line 1079
    mul-long v92, v40, v62

    add-long v1, v1, v92

    .line 1080
    mul-long v92, v40, v64

    add-long v6, v6, v92

    .line 1081
    mul-long v92, v40, v66

    add-long v9, v9, v92

    .line 1082
    mul-long v92, v40, v68

    sub-long v12, v12, v92

    .line 1083
    mul-long v92, v40, v70

    add-long v15, v15, v92

    .line 1084
    mul-long v92, v40, v72

    sub-long v20, v20, v92

    .line 1085
    const-wide/16 v40, 0x0

    .line 1088
    shr-long v92, v1, v33

    .end local v98    # "carry0":J
    .local v92, "carry0":J
    add-long v6, v6, v92

    shl-long v98, v92, v33

    sub-long v1, v1, v98

    .line 1089
    shr-long v98, v6, v33

    .end local v104    # "carry1":J
    .local v98, "carry1":J
    add-long v9, v9, v98

    shl-long v104, v98, v33

    sub-long v6, v6, v104

    .line 1090
    shr-long v100, v9, v33

    add-long v12, v12, v100

    shl-long v104, v100, v33

    sub-long v9, v9, v104

    .line 1091
    shr-long v104, v12, v33

    .end local v106    # "carry3":J
    .local v104, "carry3":J
    add-long v15, v15, v104

    shl-long v106, v104, v33

    sub-long v12, v12, v106

    .line 1092
    shr-long v102, v15, v33

    add-long v20, v20, v102

    shl-long v106, v102, v33

    sub-long v15, v15, v106

    .line 1093
    shr-long v106, v20, v33

    .end local v108    # "carry5":J
    .local v106, "carry5":J
    add-long v23, v23, v106

    shl-long v108, v106, v33

    sub-long v20, v20, v108

    .line 1094
    shr-long v76, v23, v33

    add-long v27, v27, v76

    shl-long v108, v76, v33

    sub-long v23, v23, v108

    .line 1095
    shr-long v88, v27, v33

    add-long v31, v31, v88

    shl-long v108, v88, v33

    sub-long v27, v27, v108

    .line 1096
    shr-long v78, v31, v33

    add-long v34, v34, v78

    shl-long v108, v78, v33

    sub-long v31, v31, v108

    .line 1097
    shr-long v90, v34, v33

    add-long v36, v36, v90

    shl-long v108, v90, v33

    sub-long v34, v34, v108

    .line 1098
    shr-long v80, v36, v33

    add-long v38, v38, v80

    shl-long v108, v80, v33

    sub-long v36, v36, v108

    .line 1099
    shr-long v74, v38, v33

    add-long v40, v40, v74

    shl-long v108, v74, v33

    sub-long v38, v38, v108

    .line 1102
    mul-long v62, v62, v40

    add-long v1, v1, v62

    .line 1103
    mul-long v64, v64, v40

    add-long v6, v6, v64

    .line 1104
    mul-long v66, v66, v40

    add-long v9, v9, v66

    .line 1105
    mul-long v68, v68, v40

    sub-long v12, v12, v68

    .line 1106
    mul-long v70, v70, v40

    add-long v15, v15, v70

    .line 1107
    mul-long v72, v72, v40

    sub-long v20, v20, v72

    .line 1110
    shr-long v62, v1, v33

    .end local v92    # "carry0":J
    .local v62, "carry0":J
    add-long v6, v6, v62

    shl-long v64, v62, v33

    sub-long v1, v1, v64

    .line 1111
    shr-long v64, v6, v33

    .end local v98    # "carry1":J
    .local v64, "carry1":J
    add-long v9, v9, v64

    shl-long v66, v64, v33

    sub-long v6, v6, v66

    .line 1112
    shr-long v66, v9, v33

    .end local v100    # "carry2":J
    .local v66, "carry2":J
    add-long v12, v12, v66

    shl-long v68, v66, v33

    sub-long v9, v9, v68

    .line 1113
    shr-long v68, v12, v33

    .end local v104    # "carry3":J
    .local v68, "carry3":J
    add-long v15, v15, v68

    shl-long v70, v68, v33

    sub-long v12, v12, v70

    .line 1114
    shr-long v70, v15, v33

    .end local v102    # "carry4":J
    .local v70, "carry4":J
    add-long v20, v20, v70

    shl-long v72, v70, v33

    sub-long v15, v15, v72

    .line 1115
    shr-long v72, v20, v33

    .end local v106    # "carry5":J
    .local v72, "carry5":J
    add-long v23, v23, v72

    shl-long v92, v72, v33

    sub-long v20, v20, v92

    .line 1116
    shr-long v76, v23, v33

    add-long v27, v27, v76

    shl-long v92, v76, v33

    sub-long v23, v23, v92

    .line 1117
    shr-long v88, v27, v33

    add-long v31, v31, v88

    shl-long v92, v88, v33

    sub-long v27, v27, v92

    .line 1118
    shr-long v78, v31, v33

    add-long v34, v34, v78

    shl-long v92, v78, v33

    move/from16 v98, v4

    move v3, v5

    sub-long v4, v31, v92

    .line 1119
    .end local v31    # "s8":J
    .local v4, "s8":J
    shr-long v31, v34, v33

    .end local v90    # "carry9":J
    .local v31, "carry9":J
    add-long v36, v36, v31

    shl-long v90, v31, v33

    sub-long v34, v34, v90

    .line 1120
    shr-long v80, v36, v33

    add-long v38, v38, v80

    shl-long v90, v80, v33

    sub-long v36, v36, v90

    .line 1123
    move/from16 v90, v3

    long-to-int v3, v1

    int-to-byte v3, v3

    const/16 v91, 0x0

    aput-byte v3, v0, v91

    .line 1124
    const/16 v3, 0x8

    move/from16 v91, v8

    move-wide/from16 v92, v9

    .end local v9    # "s2":J
    .local v92, "s2":J
    shr-long v8, v1, v3

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v98

    .line 1125
    const/16 v8, 0x10

    shr-long v9, v1, v8

    shl-long v99, v6, v91

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v90

    .line 1126
    shr-long v9, v6, v29

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v29

    .line 1127
    const/16 v9, 0xb

    shr-long v9, v6, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v17

    .line 1128
    const/16 v9, 0x13

    shr-long v9, v6, v9

    shl-long v99, v92, v90

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v91

    .line 1129
    shr-long v9, v92, v25

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v25

    .line 1130
    const/16 v9, 0xe

    shr-long v9, v92, v9

    shl-long v99, v12, v11

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v11

    .line 1131
    shr-long v9, v12, v98

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v3

    .line 1132
    const/16 v9, 0x9

    shr-long v9, v12, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x9

    aput-byte v9, v0, v10

    .line 1133
    const/16 v9, 0x11

    shr-long v9, v12, v9

    shl-long v99, v15, v17

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v14

    .line 1134
    shr-long v9, v15, v17

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0xb

    aput-byte v9, v0, v10

    .line 1135
    const/16 v9, 0xc

    shr-long v9, v15, v9

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0xc

    aput-byte v9, v0, v10

    .line 1136
    const/16 v9, 0x14

    shr-long v9, v15, v9

    shl-long v99, v20, v98

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v22

    .line 1137
    shr-long v9, v20, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0xe

    aput-byte v9, v0, v10

    .line 1138
    shr-long v9, v20, v26

    shl-long v99, v23, v25

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v26

    .line 1139
    shr-long v9, v23, v90

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v8

    .line 1140
    shr-long v9, v23, v14

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x11

    aput-byte v9, v0, v10

    .line 1141
    shr-long v9, v23, v30

    shl-long v99, v27, v29

    or-long v9, v9, v99

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v0, v30

    .line 1142
    shr-long v9, v27, v91

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x13

    aput-byte v9, v0, v10

    .line 1143
    shr-long v9, v27, v22

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x14

    aput-byte v9, v0, v10

    .line 1144
    long-to-int v9, v4

    int-to-byte v9, v9

    aput-byte v9, v0, v33

    .line 1145
    shr-long v9, v4, v3

    long-to-int v3, v9

    int-to-byte v3, v3

    const/16 v9, 0x16

    aput-byte v3, v0, v9

    .line 1146
    shr-long v8, v4, v8

    shl-long v99, v34, v91

    or-long v8, v8, v99

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x17

    aput-byte v3, v0, v8

    .line 1147
    shr-long v8, v34, v29

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x18

    aput-byte v3, v0, v8

    .line 1148
    const/16 v3, 0xb

    shr-long v8, v34, v3

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x19

    aput-byte v3, v0, v8

    .line 1149
    const/16 v3, 0x13

    shr-long v8, v34, v3

    shl-long v29, v36, v90

    or-long v8, v8, v29

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1a

    aput-byte v3, v0, v8

    .line 1150
    shr-long v8, v36, v25

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1b

    aput-byte v3, v0, v8

    .line 1151
    const/16 v3, 0xe

    shr-long v8, v36, v3

    shl-long v10, v38, v11

    or-long/2addr v8, v10

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1c

    aput-byte v3, v0, v8

    .line 1152
    shr-long v8, v38, v98

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1d

    aput-byte v3, v0, v8

    .line 1153
    const/16 v3, 0x9

    shr-long v8, v38, v3

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1e

    aput-byte v3, v0, v8

    .line 1154
    const/16 v3, 0x11

    shr-long v8, v38, v3

    long-to-int v3, v8

    int-to-byte v3, v3

    const/16 v8, 0x1f

    aput-byte v3, v0, v8

    .line 1155
    return-void
.end method

.method private static scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    .locals 9
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 581
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 582
    .local v0, "e":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 583
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x0

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 584
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    .line 593
    .local v1, "carry":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 594
    aget-byte v3, v0, v2

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 595
    aget-byte v3, v0, v2

    add-int/lit8 v3, v3, 0x8

    .line 596
    .end local v1    # "carry":I
    .local v3, "carry":I
    shr-int/lit8 v1, v3, 0x4

    .line 597
    .end local v3    # "carry":I
    .restart local v1    # "carry":I
    aget-byte v3, v0, v2

    shl-int/lit8 v4, v1, 0x4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 593
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 599
    .end local v2    # "i":I
    :cond_1
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    add-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 601
    new-instance v2, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519;->NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;

    invoke-direct {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 602
    .local v2, "ret":Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    new-instance v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    invoke-direct {v3}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;-><init>()V

    .line 607
    .local v3, "xyzt":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 608
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v6, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v5, v6}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 609
    .local v5, "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    div-int/lit8 v6, v4, 0x2

    aget-byte v7, v0, v4

    invoke-static {v5, v6, v7}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 610
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v6

    invoke-static {v2, v6, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 607
    .end local v5    # "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 615
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v4}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>()V

    .line 616
    .local v4, "xyz":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 617
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 618
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 619
    invoke-static {v4, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->fromPartialXYZT(Lcom/google/crypto/tink/subtle/Ed25519$XYZ;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleXYZ(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZ;)V

    .line 622
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v6, v0

    if-ge v5, v6, :cond_3

    .line 623
    new-instance v6, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    sget-object v7, Lcom/google/crypto/tink/subtle/Ed25519;->CACHED_NEUTRAL:Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v6, v7}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 624
    .local v6, "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    div-int/lit8 v7, v5, 0x2

    aget-byte v8, v0, v5

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/subtle/Ed25519;->select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V

    .line 625
    invoke-static {v3, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$400(Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v7

    invoke-static {v2, v7, v6}, Lcom/google/crypto/tink/subtle/Ed25519;->add(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V

    .line 622
    .end local v6    # "t":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    .line 630
    .end local v5    # "i":I
    :cond_3
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    invoke-direct {v5, v2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;-><init>(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;)V

    .line 631
    .local v5, "result":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-virtual {v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->isOnCurve()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 634
    return-object v5

    .line 632
    :cond_4
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "arithmetic error in scalar multiplication"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static scalarMultWithBaseToBytes([B)[B
    .locals 1
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 646
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static select(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;IB)V
    .locals 6
    .param p0, "t"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .param p1, "pos"    # I
    .param p2, "b"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t",
            "pos",
            "b"
        }
    .end annotation

    .line 550
    and-int/lit16 v0, p2, 0xff

    const/4 v1, 0x7

    shr-int/2addr v0, v1

    .line 551
    .local v0, "bnegative":I
    neg-int v2, v0

    and-int/2addr v2, p2

    const/4 v3, 0x1

    shl-int/2addr v2, v3

    sub-int v2, p2, v2

    .line 553
    .local v2, "babs":I
    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 554
    sget-object v4, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v4, v4, p1

    aget-object v3, v4, v3

    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 555
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x3

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 556
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 557
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x5

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 558
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 559
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    invoke-static {v2, v1}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 560
    sget-object v3, Lcom/google/crypto/tink/subtle/Ed25519Constants;->B_TABLE:[[Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    aget-object v3, v3, p1

    aget-object v1, v3, v1

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->eq(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 562
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    const/16 v3, 0xa

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 563
    .local v1, "yPlusX":[J
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    .line 564
    .local v4, "yMinusX":[J
    iget-object v5, p0, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 565
    .local v3, "t2d":[J
    invoke-static {v3, v3}, Lcom/google/crypto/tink/subtle/Ed25519;->neg([J[J)V

    .line 566
    new-instance v5, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;

    invoke-direct {v5, v1, v4, v3}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;-><init>([J[J[J)V

    .line 567
    .local v5, "minust":Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    invoke-virtual {p0, v5, v0}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->copyConditional(Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;I)V

    .line 568
    return-void
.end method

.method static sign([B[B[B)[B
    .locals 7
    .param p0, "message"    # [B
    .param p1, "publicKey"    # [B
    .param p2, "hashedPrivateKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "publicKey",
            "hashedPrivateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1538
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1539
    .local v0, "messageCopy":[B
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v3, "SHA-512"

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    .line 1540
    .local v2, "digest":Ljava/security/MessageDigest;
    const/16 v3, 0x20

    invoke-virtual {v2, p2, v3, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 1541
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1542
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1543
    .local v4, "r":[B
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1545
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->scalarMultWithBase([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v5

    invoke-static {v5, v1, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1546
    .local v1, "rB":[B
    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    .line 1547
    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 1548
    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1549
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 1550
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 1551
    .local v5, "hram":[B
    invoke-static {v5}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1552
    new-array v3, v3, [B

    .line 1553
    .local v3, "s":[B
    invoke-static {v3, v5, p2, v4}, Lcom/google/crypto/tink/subtle/Ed25519;->mulAdd([B[B[B[B)V

    .line 1554
    filled-new-array {v1, v3}, [[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object v6

    return-object v6
.end method

.method private static slide([B)[B
    .locals 8
    .param p0, "a"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .line 651
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 655
    .local v1, "r":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 656
    shr-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v2, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 655
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 661
    aget-byte v4, v1, v2

    if-eqz v4, :cond_4

    .line 662
    const/4 v4, 0x1

    .local v4, "b":I
    :goto_2
    const/4 v5, 0x6

    if-gt v4, v5, :cond_4

    add-int v5, v2, v4

    if-ge v5, v0, :cond_4

    .line 663
    add-int v5, v2, v4

    aget-byte v5, v1, v5

    if-eqz v5, :cond_3

    .line 664
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    const/16 v6, 0xf

    const/4 v7, 0x0

    if-gt v5, v6, :cond_1

    .line 665
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 666
    add-int v5, v2, v4

    aput-byte v7, v1, v5

    goto :goto_4

    .line 667
    :cond_1
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    const/16 v6, -0xf

    if-lt v5, v6, :cond_4

    .line 668
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 669
    add-int v5, v2, v4

    .local v5, "k":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 670
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 671
    aput-byte v3, v1, v5

    .line 672
    goto :goto_4

    .line 674
    :cond_2
    aput-byte v7, v1, v5

    .line 669
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 662
    .end local v5    # "k":I
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 660
    .end local v4    # "b":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 683
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method private static sub(Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;Lcom/google/crypto/tink/subtle/Ed25519$XYZT;Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;)V
    .locals 4
    .param p0, "partialXYZT"    # Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;
    .param p1, "extended"    # Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    .param p2, "cached"    # Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "partialXYZT",
            "extended",
            "cached"
        }
    .end annotation

    .line 435
    const/16 v0, 0xa

    new-array v0, v0, [J

    .line 438
    .local v0, "t":[J
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 441
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 444
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yPlusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 447
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->yMinusX:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 450
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->t:[J

    iget-object v3, p2, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->t2d:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 453
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p1, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    invoke-virtual {p2, v1, v2}, Lcom/google/crypto/tink/subtle/Ed25519$CachedXYT;->multByZ([J[J)V

    .line 456
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 459
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->x:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 462
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v2, v2, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v3, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v3, v3, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->y:[J

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 465
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->xyz:Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    iget-object v1, v1, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->z:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 468
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    iget-object v2, p0, Lcom/google/crypto/tink/subtle/Ed25519$PartialXYZT;->t:[J

    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 469
    return-void
.end method

.method static verify([B[B[B)Z
    .locals 11
    .param p0, "message"    # [B
    .param p1, "signature"    # [B
    .param p2, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "signature",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1595
    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    .line 1596
    return v1

    .line 1598
    :cond_0
    const/16 v0, 0x20

    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1599
    .local v2, "s":[B
    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Ed25519;->isSmallerThanGroupOrder([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1600
    return v1

    .line 1602
    :cond_1
    sget-object v3, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v4, "SHA-512"

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/MessageDigest;

    .line 1603
    .local v3, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v3, p1, v1, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 1604
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->update([B)V

    .line 1605
    invoke-virtual {v3, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1606
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 1607
    .local v4, "h":[B
    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Ed25519;->reduce([B)V

    .line 1609
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Ed25519$XYZT;->access$500([B)Lcom/google/crypto/tink/subtle/Ed25519$XYZT;

    move-result-object v5

    .line 1610
    .local v5, "negPublicKey":Lcom/google/crypto/tink/subtle/Ed25519$XYZT;
    invoke-static {v4, v5, v2}, Lcom/google/crypto/tink/subtle/Ed25519;->doubleScalarMultVarTime([BLcom/google/crypto/tink/subtle/Ed25519$XYZT;[B)Lcom/google/crypto/tink/subtle/Ed25519$XYZ;

    move-result-object v6

    .line 1611
    .local v6, "xyz":Lcom/google/crypto/tink/subtle/Ed25519$XYZ;
    invoke-virtual {v6}, Lcom/google/crypto/tink/subtle/Ed25519$XYZ;->toBytes()[B

    move-result-object v7

    .line 1612
    .local v7, "expectedR":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v0, :cond_3

    .line 1613
    aget-byte v9, v7, v8

    aget-byte v10, p1, v8

    if-eq v9, v10, :cond_2

    .line 1614
    return v1

    .line 1612
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1617
    .end local v8    # "i":I
    :cond_3
    const/4 v0, 0x1

    return v0
.end method
