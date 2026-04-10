.class public final Lcom/google/crypto/tink/internal/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;,
        Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;
    }
.end annotation


# static fields
.field private static final JSON_ELEMENT:Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 256
    new-instance v0, Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;-><init>(Lcom/google/crypto/tink/internal/JsonParser$1;)V

    sput-object v0, Lcom/google/crypto/tink/internal/JsonParser;->JSON_ELEMENT:Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParsedNumberAsLongOrThrow(Lcom/google/gson/JsonElement;)J
    .locals 3
    .param p0, "element"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    .line 278
    .local v0, "num":Ljava/lang/Number;
    instance-of v1, v0, Lcom/google/crypto/tink/internal/JsonParser$LazilyParsedNumber;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 282
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "does not contain a parsed number."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static isValidString(Ljava/lang/String;)Z
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 50
    .local v0, "length":I
    const/4 v1, 0x0

    .line 54
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ne v1, v0, :cond_1

    .line 55
    const/4 v2, 0x1

    return v2

    .line 57
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 58
    .local v2, "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 59
    invoke-static {v2}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_3

    if-eq v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 63
    :cond_2
    nop

    .end local v2    # "ch":C
    add-int/lit8 v1, v1, 0x1

    .line 64
    goto :goto_0

    .line 61
    .restart local v2    # "ch":C
    :cond_3
    :goto_1
    const/4 v3, 0x0

    return v3
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 260
    :try_start_0
    new-instance v0, Lcom/google/gson/stream/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 261
    .local v0, "jsonReader":Lcom/google/gson/stream/JsonReader;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 262
    sget-object v1, Lcom/google/crypto/tink/internal/JsonParser;->JSON_ELEMENT:Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/internal/JsonParser$JsonElementTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 263
    .end local v0    # "jsonReader":Lcom/google/gson/stream/JsonReader;
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
