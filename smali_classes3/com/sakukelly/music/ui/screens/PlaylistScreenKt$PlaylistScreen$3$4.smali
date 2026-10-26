.class final Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;
.super Ljava/lang/Object;
.source "PlaylistScreen.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3;->invoke(Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field final synthetic $newPlaylistName$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $showCreateDialog$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iGmZIK1etAeWmBNeIhja8VzPHpY(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->invoke$lambda$0(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$newPlaylistName$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$showCreateDialog$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    const-string v0, "$libraryViewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$newPlaylistName$delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$showCreateDialog$delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {p1}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt;->access$PlaylistScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt;->access$PlaylistScreen$lambda$5(Landroidx/compose/runtime/MutableState;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->createPlaylist(Ljava/lang/String;)V

    .line 98
    const-string p0, ""

    invoke-static {p1, p0}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt;->access$PlaylistScreen$lambda$6(Landroidx/compose/runtime/MutableState;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 99
    invoke-static {p2, p0}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt;->access$PlaylistScreen$lambda$3(Landroidx/compose/runtime/MutableState;Z)V

    .line 101
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    and-int/lit8 v1, p2, 0xb

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 94
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 94
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$libraryViewModel:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v2, v0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$newPlaylistName$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v3, v0, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4;->$showCreateDialog$delegate:Landroidx/compose/runtime/MutableState;

    new-instance v4, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3}, Lcom/sakukelly/music/ui/screens/PlaylistScreenKt$PlaylistScreen$3$4$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    sget-object v1, Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlaylistScreenKt;->INSTANCE:Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlaylistScreenKt;

    invoke-virtual {v1}, Lcom/sakukelly/music/ui/screens/ComposableSingletons$PlaylistScreenKt;->getLambda-5$app_release()Lkotlin/jvm/functions/Function3;

    move-result-object v13

    const/high16 v15, 0x30000000

    const/16 v16, 0x1fe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v4 .. v16}, Landroidx/compose/material3/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/ButtonColors;Landroidx/compose/material3/ButtonElevation;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
