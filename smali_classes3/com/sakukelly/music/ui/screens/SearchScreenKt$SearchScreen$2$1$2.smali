.class final Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;
.super Ljava/lang/Object;
.source "SearchScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $query$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;


# direct methods
.method public static synthetic $r8$lambda$TnFD7TcnATu-p7MK05VYZhMLny8(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->invoke$lambda$0(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Landroidx/compose/runtime/State;Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->$query$delegate:Landroidx/compose/runtime/State;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$searchViewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->clearQuery()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 62
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->$query$delegate:Landroidx/compose/runtime/State;

    invoke-static {p2}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->access$SearchScreen$lambda$0(Landroidx/compose/runtime/State;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 63
    iget-object p2, p0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    new-instance v0, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/sakukelly/music/ui/screens/SearchScreenKt$SearchScreen$2$1$2$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)V

    sget-object p2, Lcom/sakukelly/music/ui/screens/ComposableSingletons$SearchScreenKt;->INSTANCE:Lcom/sakukelly/music/ui/screens/ComposableSingletons$SearchScreenKt;

    invoke-virtual {p2}, Lcom/sakukelly/music/ui/screens/ComposableSingletons$SearchScreenKt;->getLambda-5$app_release()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    const/high16 v7, 0x30000

    const/16 v8, 0x1e

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->IconButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :cond_2
    :goto_1
    return-void
.end method
