.class final Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ListenBrainzService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;->submitListening(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.sakukelly.music.domain.scrobbling.ListenBrainzService$submitListening$2"
    f = "ListenBrainzService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $durationS:I

.field final synthetic $listenedAt:J

.field final synthetic $release:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $token:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$token:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$artist:Ljava/lang/String;

    iput-object p4, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$release:Ljava/lang/String;

    iput p6, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$durationS:I

    iput-wide p7, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$listenedAt:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 10
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

    new-instance p1, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$release:Ljava/lang/String;

    iget v6, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$durationS:I

    iget-wide v7, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$listenedAt:J

    move-object v0, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;-><init>(Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 31
    iget v0, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 32
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$artist:Ljava/lang/String;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$title:Ljava/lang/String;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$release:Ljava/lang/String;

    iget v3, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$durationS:I

    iget-wide v4, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$listenedAt:J

    .line 33
    const-string v6, "listen_type"

    const-string v7, "single"

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 35
    const-string v7, "artist_name"

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    const-string v0, "track_name"

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "release_name"

    invoke-virtual {v6, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-lez v3, :cond_1

    .line 39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    const-string v1, "duration"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v1, "additional_info"

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v1, "listened_at"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 47
    const-string v1, "track_metadata"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v1, "payload"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 53
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "toString(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 55
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    .line 56
    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;

    invoke-static {v1}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;->access$getApiUrl$p(Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->$token:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Token "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService$submitListening$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;

    invoke-static {v0}, Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;->access$getClient$p(Lcom/sakukelly/music/domain/scrobbling/ListenBrainzService;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
