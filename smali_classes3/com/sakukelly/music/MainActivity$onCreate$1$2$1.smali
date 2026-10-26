.class final Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/MainActivity$onCreate$1$2;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $currentRoute:Ljava/lang/String;

.field final synthetic $currentSong$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $navController:Landroidx/navigation/NavHostController;

.field final synthetic $playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method public static synthetic $r8$lambda$oXEX80FKhiJpO0k_sfTTbtfl2ig(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->invoke$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Landroidx/compose/runtime/State;Landroidx/navigation/NavHostController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Landroidx/compose/runtime/State<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Landroidx/navigation/NavHostController;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentRoute:Ljava/lang/String;

    iput-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p3, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentSong$delegate:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$navController:Landroidx/navigation/NavHostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Landroidx/navigation/NavHostController;)Lkotlin/Unit;
    .locals 7

    const-string v0, "$navController"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
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


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 84
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentSong$delegate:Landroidx/compose/runtime/State;

    invoke-static {p2}, Lcom/sakukelly/music/MainActivity$onCreate$1;->access$invoke$lambda$1(Landroidx/compose/runtime/State;)Lcom/sakukelly/music/data/model/Song;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentRoute:Ljava/lang/String;

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentRoute:Ljava/lang/String;

    const-string v0, "lyrics"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$currentRoute:Ljava/lang/String;

    const-string v0, "equalizer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$playerViewModel:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    .line 85
    iget-object v0, p0, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1;->$navController:Landroidx/navigation/NavHostController;

    new-instance v1, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/sakukelly/music/MainActivity$onCreate$1$2$1$$ExternalSyntheticLambda0;-><init>(Landroidx/navigation/NavHostController;)V

    const/16 v0, 0x8

    invoke-static {p2, v1, p1, v0}, Lcom/sakukelly/music/ui/components/MiniPlayerKt;->MiniPlayer(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    :cond_2
    :goto_1
    return-void
.end method
