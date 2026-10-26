.class public final Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "SearchViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\nJ\u0006\u0010\u001c\u001a\u00020\u001aR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00110\u00100\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000eR\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00150\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000eR\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "<init>",
        "(Landroid/app/Application;)V",
        "db",
        "Lcom/sakukelly/music/data/db/AppDatabase;",
        "_query",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "",
        "query",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "getQuery",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "_localResults",
        "",
        "Lcom/sakukelly/music/data/model/Song;",
        "localResults",
        "getLocalResults",
        "_isSearchingLocal",
        "",
        "isSearchingLocal",
        "searchJob",
        "Lkotlinx/coroutines/Job;",
        "searchLocal",
        "",
        "newQuery",
        "clearQuery",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final _isSearchingLocal:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final _localResults:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final _query:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final db:Lcom/sakukelly/music/data/db/AppDatabase;

.field private final isSearchingLocal:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final localResults:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation
.end field

.field private final query:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private searchJob:Lkotlinx/coroutines/Job;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 19
    sget-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sakukelly/music/data/db/AppDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->db:Lcom/sakukelly/music/data/db/AppDatabase;

    .line 21
    const-string p1, ""

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_query:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 22
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->query:Lkotlinx/coroutines/flow/StateFlow;

    .line 24
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_localResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 25
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->localResults:Lkotlinx/coroutines/flow/StateFlow;

    const/4 p1, 0x0

    .line 27
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_isSearchingLocal:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 28
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->isSearchingLocal:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method

.method public static final synthetic access$getDb$p(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lcom/sakukelly/music/data/db/AppDatabase;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->db:Lcom/sakukelly/music/data/db/AppDatabase;

    return-object p0
.end method

.method public static final synthetic access$get_isSearchingLocal$p(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_isSearchingLocal:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method

.method public static final synthetic access$get_localResults$p(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;)Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_localResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object p0
.end method


# virtual methods
.method public final clearQuery()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_query:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v1, ""

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_localResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_isSearchingLocal:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final getLocalResults()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;>;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->localResults:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final getQuery()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->query:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final isSearchingLocal()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->isSearchingLocal:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public final searchLocal(Ljava/lang/String;)V
    .locals 8

    const-string v0, "newQuery"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_query:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->searchJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_localResults:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->_isSearchingLocal:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void

    .line 42
    :cond_1
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/ViewModel;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->getViewModelScope(Landroidx/lifecycle/ViewModel;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel$searchLocal$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel$searchLocal$1;-><init>(Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    iput-object p1, p0, Lcom/sakukelly/music/ui/viewmodel/SearchViewModel;->searchJob:Lkotlinx/coroutines/Job;

    return-void
.end method
