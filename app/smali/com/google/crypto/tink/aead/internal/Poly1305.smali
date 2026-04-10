.class public Lcom/google/crypto/tink/aead/internal/Poly1305;
.super Ljava/lang/Object;
.source "Poly1305.java"


# static fields
.field public static final MAC_KEY_SIZE_IN_BYTES:I = 0x20

.field public static final MAC_TAG_SIZE_IN_BYTES:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeMac([B[B)[B
    .locals 61
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "key",
            "data"
        }
    .end annotation

    .line 68
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .local v4, "h0":J
    const-wide/16 v6, 0x0

    .line 73
    .local v6, "h1":J
    const-wide/16 v8, 0x0

    .line 74
    .local v8, "h2":J
    const-wide/16 v10, 0x0

    .line 75
    .local v10, "h3":J
    const-wide/16 v12, 0x0

    .line 84
    .local v12, "h4":J
    const/4 v2, 0x0

    invoke-static {v0, v2, v2}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v14

    const-wide/32 v16, 0x3ffffff

    and-long v14, v14, v16

    .line 85
    .local v14, "r0":J
    move/from16 v18, v3

    const/4 v3, 0x3

    const/4 v2, 0x2

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v19

    const-wide/32 v21, 0x3ffff03

    and-long v19, v19, v21

    .line 86
    .local v19, "r1":J
    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v23

    const-wide/32 v25, 0x3ffc0ff

    and-long v23, v23, v25

    .line 87
    .local v23, "r2":J
    const/16 v3, 0x9

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v26

    const-wide/32 v28, 0x3f03fff

    and-long v26, v26, v28

    .line 88
    .local v26, "r3":J
    const/16 v3, 0xc

    const/16 v2, 0x8

    invoke-static {v0, v3, v2}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v30

    const-wide/32 v32, 0xfffff

    and-long v30, v30, v32

    .line 90
    .local v30, "r4":J
    const-wide/16 v32, 0x5

    mul-long v34, v19, v32

    .line 91
    .local v34, "s1":J
    mul-long v36, v23, v32

    .line 92
    .local v36, "s2":J
    mul-long v38, v26, v32

    .line 93
    .local v38, "s3":J
    mul-long v40, v30, v32

    .line 95
    .local v40, "s4":J
    const/16 v2, 0x11

    new-array v2, v2, [B

    .line 96
    .local v2, "buf":[B
    const/16 v43, 0x0

    move/from16 v3, v43

    .local v3, "i":I
    :goto_0
    move-wide/from16 v44, v4

    .end local v4    # "h0":J
    .local v44, "h0":J
    array-length v4, v1

    const/16 v46, 0x18

    const/16 v47, 0x1a

    if-ge v3, v4, :cond_0

    .line 97
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/aead/internal/Poly1305;->copyBlockSize([B[BI)V

    .line 98
    const/4 v4, 0x0

    invoke-static {v2, v4, v4}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v48

    add-long v44, v44, v48

    .line 99
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v21, 0x10

    invoke-static {v2, v5, v4}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v48

    add-long v6, v6, v48

    .line 100
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-static {v2, v5, v4}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v49

    add-long v8, v8, v49

    .line 101
    const/16 v4, 0x9

    invoke-static {v2, v4, v5}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v49

    add-long v10, v10, v49

    .line 102
    const/16 v4, 0xc

    const/16 v5, 0x8

    invoke-static {v2, v4, v5}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load26([BII)J

    move-result-wide v49

    aget-byte v4, v2, v21

    shl-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    or-long v4, v49, v4

    add-long/2addr v12, v4

    .line 105
    mul-long v4, v44, v14

    mul-long v49, v6, v40

    add-long v4, v4, v49

    mul-long v49, v8, v38

    add-long v4, v4, v49

    mul-long v49, v10, v36

    add-long v4, v4, v49

    mul-long v49, v12, v34

    add-long v4, v4, v49

    .line 106
    .local v4, "d0":J
    mul-long v49, v44, v19

    mul-long v51, v6, v14

    add-long v49, v49, v51

    mul-long v51, v8, v40

    add-long v49, v49, v51

    mul-long v51, v10, v38

    add-long v49, v49, v51

    mul-long v51, v12, v36

    add-long v49, v49, v51

    .line 107
    .local v49, "d1":J
    mul-long v51, v44, v23

    mul-long v53, v6, v19

    add-long v51, v51, v53

    mul-long v53, v8, v14

    add-long v51, v51, v53

    mul-long v53, v10, v40

    add-long v51, v51, v53

    mul-long v53, v12, v38

    add-long v51, v51, v53

    .line 108
    .local v51, "d2":J
    mul-long v53, v44, v26

    mul-long v55, v6, v23

    add-long v53, v53, v55

    mul-long v55, v8, v19

    add-long v53, v53, v55

    mul-long v55, v10, v14

    add-long v53, v53, v55

    mul-long v55, v12, v40

    add-long v53, v53, v55

    .line 109
    .local v53, "d3":J
    mul-long v55, v44, v30

    mul-long v57, v6, v26

    add-long v55, v55, v57

    mul-long v57, v8, v23

    add-long v55, v55, v57

    mul-long v57, v10, v19

    add-long v55, v55, v57

    mul-long v57, v12, v14

    add-long v55, v55, v57

    .line 112
    .local v55, "d4":J
    shr-long v57, v4, v47

    .line 113
    .local v57, "c":J
    and-long v44, v4, v16

    .line 114
    add-long v49, v49, v57

    .line 115
    shr-long v57, v49, v47

    .line 116
    and-long v6, v49, v16

    .line 117
    add-long v51, v51, v57

    .line 118
    shr-long v57, v51, v47

    .line 119
    and-long v8, v51, v16

    .line 120
    add-long v53, v53, v57

    .line 121
    shr-long v57, v53, v47

    .line 122
    and-long v10, v53, v16

    .line 123
    add-long v55, v55, v57

    .line 124
    shr-long v57, v55, v47

    .line 125
    and-long v12, v55, v16

    .line 126
    mul-long v59, v57, v32

    add-long v44, v44, v59

    .line 127
    shr-long v46, v44, v47

    .line 128
    .end local v57    # "c":J
    .local v46, "c":J
    and-long v44, v44, v16

    .line 129
    add-long v6, v6, v46

    .line 96
    add-int/lit8 v3, v3, 0x10

    move-wide/from16 v4, v44

    goto/16 :goto_0

    .end local v4    # "d0":J
    .end local v46    # "c":J
    .end local v49    # "d1":J
    .end local v51    # "d2":J
    .end local v53    # "d3":J
    .end local v55    # "d4":J
    :cond_0
    const/16 v21, 0x10

    .line 132
    .end local v3    # "i":I
    shr-long v3, v6, v47

    .line 133
    .local v3, "c":J
    and-long v5, v6, v16

    .line 134
    .end local v6    # "h1":J
    .local v5, "h1":J
    add-long/2addr v8, v3

    .line 135
    shr-long v3, v8, v47

    .line 136
    and-long v7, v8, v16

    .line 137
    .end local v8    # "h2":J
    .local v7, "h2":J
    add-long/2addr v10, v3

    .line 138
    shr-long v3, v10, v47

    .line 139
    and-long v9, v10, v16

    .line 140
    .end local v10    # "h3":J
    .local v9, "h3":J
    add-long/2addr v12, v3

    .line 141
    shr-long v3, v12, v47

    .line 142
    and-long v11, v12, v16

    .line 143
    .end local v12    # "h4":J
    .local v11, "h4":J
    mul-long v48, v3, v32

    add-long v44, v44, v48

    .line 144
    shr-long v3, v44, v47

    .line 145
    and-long v44, v44, v16

    .line 146
    add-long/2addr v5, v3

    .line 149
    add-long v32, v44, v32

    .line 150
    .local v32, "g0":J
    shr-long v3, v32, v47

    .line 151
    and-long v32, v32, v16

    .line 152
    add-long v48, v5, v3

    .line 153
    .local v48, "g1":J
    shr-long v3, v48, v47

    .line 154
    and-long v48, v48, v16

    .line 155
    add-long v50, v7, v3

    .line 156
    .local v50, "g2":J
    shr-long v3, v50, v47

    .line 157
    and-long v50, v50, v16

    .line 158
    add-long v52, v9, v3

    .line 159
    .local v52, "g3":J
    shr-long v3, v52, v47

    .line 160
    and-long v16, v52, v16

    .line 161
    .end local v52    # "g3":J
    .local v16, "g3":J
    add-long v52, v11, v3

    const-wide/32 v54, 0x4000000

    sub-long v52, v52, v54

    .line 164
    .local v52, "g4":J
    const/16 v13, 0x3f

    move-object/from16 v22, v2

    .end local v2    # "buf":[B
    .local v22, "buf":[B
    shr-long v1, v52, v13

    .line 165
    .local v1, "mask":J
    and-long v44, v44, v1

    .line 166
    and-long/2addr v5, v1

    .line 167
    and-long/2addr v7, v1

    .line 168
    and-long/2addr v9, v1

    .line 169
    and-long/2addr v11, v1

    .line 170
    not-long v1, v1

    .line 171
    and-long v54, v32, v1

    or-long v44, v44, v54

    .line 172
    and-long v54, v48, v1

    or-long v5, v5, v54

    .line 173
    and-long v54, v50, v1

    or-long v7, v7, v54

    .line 174
    and-long v54, v16, v1

    or-long v9, v9, v54

    .line 175
    and-long v54, v52, v1

    or-long v11, v11, v54

    .line 178
    shl-long v54, v5, v47

    or-long v54, v44, v54

    const-wide v56, 0xffffffffL

    and-long v44, v54, v56

    .line 179
    const/16 v29, 0x6

    shr-long v28, v5, v29

    const/16 v13, 0x14

    shl-long v54, v7, v13

    or-long v28, v28, v54

    and-long v5, v28, v56

    .line 180
    const/16 v43, 0xc

    shr-long v28, v7, v43

    const/16 v47, 0xe

    shl-long v54, v9, v47

    or-long v28, v28, v54

    and-long v7, v28, v56

    .line 181
    const/16 v28, 0x12

    shr-long v28, v9, v28

    const/16 v42, 0x8

    shl-long v54, v11, v42

    or-long v28, v28, v54

    and-long v9, v28, v56

    .line 184
    move/from16 v13, v21

    invoke-static {v0, v13}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load32([BI)J

    move-result-wide v54

    add-long v54, v44, v54

    .line 185
    .end local v3    # "c":J
    .local v54, "c":J
    and-long v3, v54, v56

    .line 186
    .end local v44    # "h0":J
    .local v3, "h0":J
    const/16 v13, 0x14

    invoke-static {v0, v13}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load32([BI)J

    move-result-wide v28

    add-long v28, v5, v28

    shr-long v44, v54, v18

    add-long v28, v28, v44

    .line 187
    .end local v54    # "c":J
    .local v28, "c":J
    and-long v5, v28, v56

    .line 188
    move/from16 v13, v46

    invoke-static {v0, v13}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load32([BI)J

    move-result-wide v44

    add-long v44, v7, v44

    shr-long v46, v28, v18

    add-long v44, v44, v46

    .line 189
    .end local v28    # "c":J
    .local v44, "c":J
    and-long v7, v44, v56

    .line 190
    const/16 v13, 0x1c

    invoke-static {v0, v13}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load32([BI)J

    move-result-wide v28

    add-long v28, v9, v28

    shr-long v46, v44, v18

    add-long v28, v28, v46

    .line 191
    .end local v44    # "c":J
    .restart local v28    # "c":J
    and-long v9, v28, v56

    .line 193
    const/16 v13, 0x10

    new-array v13, v13, [B

    .line 194
    .local v13, "mac":[B
    const/4 v0, 0x0

    invoke-static {v13, v3, v4, v0}, Lcom/google/crypto/tink/aead/internal/Poly1305;->toByteArray([BJI)V

    .line 195
    const/4 v0, 0x4

    invoke-static {v13, v5, v6, v0}, Lcom/google/crypto/tink/aead/internal/Poly1305;->toByteArray([BJI)V

    .line 196
    const/16 v0, 0x8

    invoke-static {v13, v7, v8, v0}, Lcom/google/crypto/tink/aead/internal/Poly1305;->toByteArray([BJI)V

    .line 197
    const/16 v0, 0xc

    invoke-static {v13, v9, v10, v0}, Lcom/google/crypto/tink/aead/internal/Poly1305;->toByteArray([BJI)V

    .line 199
    return-object v13

    .line 69
    .end local v1    # "mask":J
    .end local v3    # "h0":J
    .end local v5    # "h1":J
    .end local v7    # "h2":J
    .end local v9    # "h3":J
    .end local v11    # "h4":J
    .end local v13    # "mac":[B
    .end local v14    # "r0":J
    .end local v16    # "g3":J
    .end local v19    # "r1":J
    .end local v22    # "buf":[B
    .end local v23    # "r2":J
    .end local v26    # "r3":J
    .end local v28    # "c":J
    .end local v30    # "r4":J
    .end local v32    # "g0":J
    .end local v34    # "s1":J
    .end local v36    # "s2":J
    .end local v38    # "s3":J
    .end local v40    # "s4":J
    .end local v48    # "g1":J
    .end local v50    # "g2":J
    .end local v52    # "g4":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The key length in bytes must be 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyBlockSize([B[BI)V
    .locals 4
    .param p0, "output"    # [B
    .param p1, "in"    # [B
    .param p2, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "idx"
        }
    .end annotation

    .line 58
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 59
    .local v0, "copyCount":I
    const/4 v2, 0x0

    invoke-static {p1, p2, p0, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    const/4 v3, 0x1

    aput-byte v3, p0, v0

    .line 61
    if-eq v0, v1, :cond_0

    .line 62
    add-int/lit8 v1, v0, 0x1

    array-length v3, p0

    invoke-static {p0, v1, v3, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 64
    :cond_0
    return-void
.end method

.method private static load26([BII)J
    .locals 4
    .param p0, "in"    # [B
    .param p1, "idx"    # I
    .param p2, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "idx",
            "shift"
        }
    .end annotation

    .line 48
    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/internal/Poly1305;->load32([BI)J

    move-result-wide v0

    shr-long/2addr v0, p2

    const-wide/32 v2, 0x3ffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static load32([BI)J
    .locals 4
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

    .line 40
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static toByteArray([BJI)V
    .locals 4
    .param p0, "output"    # [B
    .param p1, "num"    # J
    .param p3, "idx"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "num",
            "idx"
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 53
    add-int v1, p3, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 52
    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x8

    shr-long/2addr p1, v1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static verifyMac([B[B[B)V
    .locals 2
    .param p0, "key"    # [B
    .param p1, "data"    # [B
    .param p2, "mac"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "key",
            "data",
            "mac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 205
    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/internal/Poly1305;->computeMac([B[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 206
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid MAC"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
