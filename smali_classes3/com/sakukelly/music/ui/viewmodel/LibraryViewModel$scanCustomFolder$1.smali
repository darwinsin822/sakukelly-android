.class final Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LibraryViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->scanCustomFolder(Ljava/lang/String;)V
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
    c = "com.sakukelly.music.ui.viewmodel.LibraryViewModel$scanCustomFolder$1"
    f = "LibraryViewModel.kt"
    i = {}
    l = {
        0x64,
        0x65
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $folderPath:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iput-object p2, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->$folderPath:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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

    new-instance p1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;

    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->$folderPath:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 97
    iget v1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 98
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$get_isScanning$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 100
    :try_start_2
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$getPrefs$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/data/prefs/SettingsPrefs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sakukelly/music/data/prefs/SettingsPrefs;->getDeduplicateScan()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    iput v4, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->label:I

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 101
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$getScanner$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/domain/scanner/MediaScanner;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->$folderPath:Ljava/lang/String;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$getSongDao$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lcom/sakukelly/music/data/db/SongDao;

    move-result-object v6

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput v2, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->label:I

    const/4 v7, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanFolder$default(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v0, :cond_4

    return-object v0

    .line 105
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {p1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$get_isScanning$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    goto :goto_3

    .line 103
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 107
    :goto_3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 105
    :goto_4
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel$scanCustomFolder$1;->this$0:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {v0}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->access$get_isScanning$p(Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    throw p1
.end method
