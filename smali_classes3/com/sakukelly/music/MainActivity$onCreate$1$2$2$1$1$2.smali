.class final Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/MainActivity$onCreate$1$2$2;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/animation/AnimatedContentScope;",
        "Landroidx/navigation/NavBackStackEntry;",
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
.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

.field final synthetic $searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;


# direct methods
.method public static synthetic $r8$lambda$2SMY5N-LHbMeIBVoXav7IqQMTjY(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->invoke$lambda$1(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TC5QtNolHmwm1SGoZAF9_LsNP3k(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->invoke$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p3, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    move-object v1, p0

    check-cast v1, Landroidx/navigation/NavController;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "player"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Landroidx/navigation/NavController;->navigate$default(Landroidx/navigation/NavController;Ljava/lang/String;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;ILjava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invoke$lambda$1(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Landroidx/navigation/NavHostController;->popBackStack()Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const-string p4, "$this$composable"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "it"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$searchViewModel:Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;

    .line 113
    iget-object v1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    .line 111
    iget-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$navController:Landroidx/navigation/NavHostController;

    new-instance v2, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;)V

    iget-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2;->$navController:Landroidx/navigation/NavHostController;

    new-instance v3, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$2$1$1$2$$ExternalSyntheticLambda1;-><init>(Landroidx/navigation/NavHostController;)V

    const/16 v5, 0x48

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/sakukelly/music/ui/screens/SearchScreenKt;->SearchScreen(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
