.class public final Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
.super Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;
.source "Method.java"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/crypto/tink/shaded/protobuf/Method;",
        "Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;",
        ">;",
        "Lcom/google/crypto/tink/shaded/protobuf/MethodOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 440
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$000()Lcom/google/crypto/tink/shaded/protobuf/Method;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)V

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/Method$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/shaded/protobuf/Method$1;

    .line 433
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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
            "Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;"
        }
    .end annotation

    .line 728
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/crypto/tink/shaded/protobuf/Option;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 729
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1700(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/Iterable;)V

    .line 730
    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 718
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 719
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 720
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 719
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 721
    return-object p0
.end method

.method public addOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 700
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1600(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 702
    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 709
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 711
    return-object p0
.end method

.method public addOptions(Lcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 691
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1500(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 693
    return-object p0
.end method

.method public clearName()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 478
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 479
    return-object p0
.end method

.method public clearOptions()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 736
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 738
    return-object p0
.end method

.method public clearRequestStreaming()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$800(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 567
    return-object p0
.end method

.method public clearRequestTypeUrl()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 527
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$500(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 528
    return-object p0
.end method

.method public clearResponseStreaming()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 643
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1300(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 644
    return-object p0
.end method

.method public clearResponseTypeUrl()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1000(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 605
    return-object p0
.end method

.method public clearSyntax()Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 791
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2200(Lcom/google/crypto/tink/shaded/protobuf/Method;)V

    .line 792
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getNameBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
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

    .line 666
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Option;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptionsCount()I

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

    .line 652
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 653
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getOptionsList()Ljava/util/List;

    move-result-object v0

    .line 652
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestStreaming()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestStreaming()Z

    move-result v0

    return v0
.end method

.method public getRequestTypeUrl()Ljava/lang/String;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getRequestTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponseStreaming()Z
    .locals 1

    .line 625
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseStreaming()Z

    move-result v0

    return v0
.end method

.method public getResponseTypeUrl()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseTypeUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getResponseTypeUrlBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getSyntax()Lcom/google/crypto/tink/shaded/protobuf/Syntax;

    move-result-object v0

    return-object v0
.end method

.method public getSyntaxValue()I
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/Method;->getSyntaxValue()I

    move-result v0

    return v0
.end method

.method public removeOptions(I)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 744
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1900(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V

    .line 746
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 468
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 469
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$100(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    .line 470
    return-object p0
.end method

.method public setNameBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 488
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$300(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 490
    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option$Builder;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 682
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 683
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    .line 684
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/Option$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/Option;

    .line 683
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 685
    return-object p0
.end method

.method public setOptions(ILcom/google/crypto/tink/shaded/protobuf/Option;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 673
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 674
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1400(Lcom/google/crypto/tink/shaded/protobuf/Method;ILcom/google/crypto/tink/shaded/protobuf/Option;)V

    .line 675
    return-object p0
.end method

.method public setRequestStreaming(Z)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 556
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 557
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$700(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V

    .line 558
    return-object p0
.end method

.method public setRequestTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 517
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 518
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$400(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    .line 519
    return-object p0
.end method

.method public setRequestTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 537
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$600(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 539
    return-object p0
.end method

.method public setResponseStreaming(Z)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 634
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1200(Lcom/google/crypto/tink/shaded/protobuf/Method;Z)V

    .line 635
    return-object p0
.end method

.method public setResponseTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 594
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$900(Lcom/google/crypto/tink/shaded/protobuf/Method;Ljava/lang/String;)V

    .line 596
    return-object p0
.end method

.method public setResponseTypeUrlBytes(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 614
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 615
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$1100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    .line 616
    return-object p0
.end method

.method public setSyntax(Lcom/google/crypto/tink/shaded/protobuf/Syntax;)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/crypto/tink/shaded/protobuf/Syntax;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 781
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2100(Lcom/google/crypto/tink/shaded/protobuf/Method;Lcom/google/crypto/tink/shaded/protobuf/Syntax;)V

    .line 783
    return-object p0
.end method

.method public setSyntaxValue(I)Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;
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

    .line 763
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->copyOnWrite()V

    .line 764
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/Method$Builder;->instance:Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Method;

    invoke-static {v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Method;->access$2000(Lcom/google/crypto/tink/shaded/protobuf/Method;I)V

    .line 765
    return-object p0
.end method
