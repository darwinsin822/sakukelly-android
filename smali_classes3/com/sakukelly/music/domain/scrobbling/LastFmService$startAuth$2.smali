.class final Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LastFmService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scrobbling/LastFmService;->startAuth(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlin.jvm.PlatformType",
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
    c = "com.sakukelly.music.domain.scrobbling.LastFmService$startAuth$2"
    f = "LastFmService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $secret:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$secret:Ljava/lang/String;

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

    new-instance p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;

    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$apiKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$secret:Ljava/lang/String;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;-><init>(Ljava/lang/String;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 38
    iget v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x3

    .line 40
    new-array p1, p1, [Lkotlin/Pair;

    const-string v0, "method"

    const-string v1, "auth.getToken"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 41
    const-string v0, "api_key"

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$apiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 42
    const-string v0, "format"

    const-string v1, "json"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 39
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$secret:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->sign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    invoke-static {v0}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->access$getApiUrl$p(Lcom/sakukelly/music/domain/scrobbling/LastFmService;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->$apiKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?method=auth.getToken&api_key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&api_sig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&format=json"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$startAuth$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    invoke-static {v0}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->access$getClient$p(Lcom/sakukelly/music/domain/scrobbling/LastFmService;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    .line 50
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    const-string p1, "token"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
