.class final Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "PlayerViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sakukelly.music.ui.viewmodel.PlayerViewModel$toggleFavorite$1$1"
    f = "PlayerViewModel.kt"
    i = {}
    l = {
        0xb7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $newFav:Z

.field final synthetic $song:Lcom/sakukelly/music/data/model/Song;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;",
            "Lcom/sakukelly/music/data/model/Song;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$song:Lcom/sakukelly/music/data/model/Song;

    iput-boolean p3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$newFav:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;

    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$song:Lcom/sakukelly/music/data/model/Song;

    iget-boolean v2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$newFav:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;Lcom/sakukelly/music/data/model/Song;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 182
    iget v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 183
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->access$getDb$p(Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sakukelly/music/data/db/AppDatabase;->songDao()Lcom/sakukelly/music/data/db/SongDao;

    move-result-object p1

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$song:Lcom/sakukelly/music/data/model/Song;

    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->$newFav:Z

    move-object v4, p0

    check-cast v4, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel$toggleFavorite$1$1;->label:I

    invoke-interface {p1, v1, v3, v4}, Lcom/sakukelly/music/data/db/SongDao;->updateFavorite(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 184
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
