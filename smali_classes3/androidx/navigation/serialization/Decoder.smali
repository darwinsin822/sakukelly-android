.class final Landroidx/navigation/serialization/Decoder;
.super Ljava/lang/Object;
.source "RouteDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRouteDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RouteDecoder.kt\nandroidx/navigation/serialization/Decoder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\u0001J\u0006\u0010\r\u001a\u00020\u000eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/navigation/serialization/Decoder;",
        "",
        "store",
        "Landroidx/navigation/serialization/ArgStore;",
        "(Landroidx/navigation/serialization/ArgStore;)V",
        "elementIndex",
        "",
        "elementName",
        "",
        "computeNextElementIndex",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "decodeValue",
        "isCurrentElementNull",
        "",
        "navigation-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private elementIndex:I

.field private elementName:Ljava/lang/String;

.field private final store:Landroidx/navigation/serialization/ArgStore;


# direct methods
.method public constructor <init>(Landroidx/navigation/serialization/ArgStore;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/serialization/Decoder;->store:Landroidx/navigation/serialization/ArgStore;

    const/4 p1, -0x1

    .line 114
    iput p1, p0, Landroidx/navigation/serialization/Decoder;->elementIndex:I

    .line 115
    const-string p1, ""

    iput-object p1, p0, Landroidx/navigation/serialization/Decoder;->elementName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final computeNextElementIndex(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .locals 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget v0, p0, Landroidx/navigation/serialization/Decoder;->elementIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 133
    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 134
    :cond_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    iget-object v2, p0, Landroidx/navigation/serialization/Decoder;->store:Landroidx/navigation/serialization/ArgStore;

    invoke-virtual {v2, v1}, Landroidx/navigation/serialization/ArgStore;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    iput v0, p0, Landroidx/navigation/serialization/Decoder;->elementIndex:I

    .line 139
    iput-object v1, p0, Landroidx/navigation/serialization/Decoder;->elementName:Ljava/lang/String;

    return v0
.end method

.method public final decodeValue()Ljava/lang/Object;
    .locals 2

    .line 147
    iget-object v0, p0, Landroidx/navigation/serialization/Decoder;->store:Landroidx/navigation/serialization/ArgStore;

    iget-object v1, p0, Landroidx/navigation/serialization/Decoder;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/serialization/ArgStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected null value for non-nullable argument "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/navigation/serialization/Decoder;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final isCurrentElementNull()Z
    .locals 2

    .line 152
    iget-object v0, p0, Landroidx/navigation/serialization/Decoder;->store:Landroidx/navigation/serialization/ArgStore;

    iget-object v1, p0, Landroidx/navigation/serialization/Decoder;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/serialization/ArgStore;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
