.class final Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;
.super Ljava/lang/Object;
.source "SongItem.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/components/SongItemKt;->SongItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSongItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SongItem.kt\ncom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,194:1\n149#2:195\n*S KotlinDebug\n*F\n+ 1 SongItem.kt\ncom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4\n*L\n147#1:195\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $heartColor$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $heartScale$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isFavLocal$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$heartColor$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$heartScale$delegate:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 8

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 142
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 143
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/sakukelly/music/ui/components/SongItemKt;->access$SongItem$lambda$7(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/FavoriteKt;->getFavorite(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Landroidx/compose/material/icons/Icons;->INSTANCE:Landroidx/compose/material/icons/Icons;

    invoke-virtual {p2}, Landroidx/compose/material/icons/Icons;->getDefault()Landroidx/compose/material/icons/Icons$Filled;

    move-result-object p2

    invoke-static {p2}, Landroidx/compose/material/icons/filled/FavoriteBorderKt;->getFavoriteBorder(Landroidx/compose/material/icons/Icons$Filled;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    :goto_1
    move-object v0, p2

    .line 144
    iget-object p2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$isFavLocal$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {p2}, Lcom/sakukelly/music/ui/components/SongItemKt;->access$SongItem$lambda$7(Landroidx/compose/runtime/MutableState;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Quitar de favoritos"

    goto :goto_2

    :cond_3
    const-string p2, "A\u00f1adir a favoritos"

    :goto_2
    move-object v1, p2

    .line 145
    iget-object p2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$heartColor$delegate:Landroidx/compose/runtime/State;

    invoke-static {p2}, Lcom/sakukelly/music/ui/components/SongItemKt;->access$SongItem$lambda$12(Landroidx/compose/runtime/State;)J

    move-result-wide v3

    .line 146
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast p2, Landroidx/compose/ui/Modifier;

    const/16 v2, 0x16

    int-to-float v2, v2

    .line 195
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 147
    invoke-static {p2, v2}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 148
    iget-object v2, p0, Lcom/sakukelly/music/ui/components/SongItemKt$SongItem$2$4;->$heartScale$delegate:Landroidx/compose/runtime/State;

    invoke-static {v2}, Lcom/sakukelly/music/ui/components/SongItemKt;->access$SongItem$lambda$11(Landroidx/compose/runtime/State;)F

    move-result v2

    invoke-static {p2, v2}, Landroidx/compose/ui/draw/ScaleKt;->scale(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    .line 142
    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    :goto_3
    return-void
.end method
