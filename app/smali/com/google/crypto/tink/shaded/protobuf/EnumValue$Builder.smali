.class public final Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "EnumValue.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/EnumValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/EnumValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 276
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$000()Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/EnumValue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/EnumValue$1;

    .line 269
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;)",
            "Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;"
        }
    .end annotation

    .line 438
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/shaded/protobuf/Option;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 439
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$900(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/Iterable;)V

    .line 440
    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 430
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 429
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$800(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 431
    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 411
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$800(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 412
    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builderForValue"
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 420
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$700(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 421
    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 401
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 402
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$700(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 403
    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$200(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    .line 315
    return-object p0
.end method

.method public clearNumber()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 352
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 353
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$500(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    .line 354
    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 447
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;)V

    .line 448
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getNumber()I

    move-result v0

    return v0
.end method

.method public getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptionsCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/shaded/protobuf/Option;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 363
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 362
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 455
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V

    .line 456
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 304
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 305
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$100(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Ljava/lang/String;)V

    .line 306
    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 324
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 325
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$300(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 326
    return-object p0
.end method

.method public setNumber(I)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 343
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 344
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$400(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;I)V

    .line 345
    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "builderForValue"
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 393
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    .line 394
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 393
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$600(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 395
    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Option;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 383
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->copyOnWrite()V

    .line 384
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/EnumValue;->access$600(Lcom/google/crypto/tink/shaded/protobuf/EnumValue;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 385
    return-object p0
.end method
