.class final Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LastFmService.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scrobbling/LastFmService;->scrobble(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLastFmService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LastFmService.kt\ncom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,157:1\n216#2,2:158\n*S KotlinDebug\n*F\n+ 1 LastFmService.kt\ncom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2\n*L\n127#1:158,2\n*E\n"
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
    c = "com.sakukelly.music.domain.scrobbling.LastFmService$scrobble$2"
    f = "LastFmService.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $album:Ljava/lang/String;

.field final synthetic $apiKey:Ljava/lang/String;

.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $secret:Ljava/lang/String;

.field final synthetic $session:Ljava/lang/String;

.field final synthetic $timestamp:J

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$apiKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$session:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$artist:Ljava/lang/String;

    iput-object p4, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$title:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$timestamp:J

    iput-object p7, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$album:Ljava/lang/String;

    iput-object p8, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iput-object p9, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$secret:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 11
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

    new-instance p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$apiKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$session:Ljava/lang/String;

    iget-object v3, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$artist:Ljava/lang/String;

    iget-object v4, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$title:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$timestamp:J

    iget-object v7, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$album:Ljava/lang/String;

    iget-object v8, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iget-object v9, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$secret:Ljava/lang/String;

    move-object v0, p1

    move-object v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/sakukelly/music/domain/scrobbling/LastFmService;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 111
    iget v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const/4 p1, 0x7

    .line 113
    new-array p1, p1, [Lkotlin/Pair;

    const-string v0, "method"

    const-string v1, "track.scrobble"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 114
    const-string v0, "api_key"

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$apiKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p1, v1

    .line 115
    const-string v0, "sk"

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$session:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p1, v2

    .line 116
    const-string v0, "artist"

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$artist:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, p1, v2

    .line 117
    const-string v0, "track"

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$title:Ljava/lang/String;

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, p1, v2

    .line 118
    iget-wide v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "timestamp"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x5

    aput-object v0, p1, v2

    .line 119
    const-string v0, "format"

    const-string v2, "json"

    invoke-static {v0, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, p1, v2

    .line 112
    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$album:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "album"

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$album:Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->$secret:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->sign(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    const-string v2, "api_sig"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v0, Lokhttp3/FormBody$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 129
    :cond_1
    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    invoke-static {v1}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->access$getApiUrl$p(Lcom/sakukelly/music/domain/scrobbling/LastFmService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    check-cast v0, Lokhttp3/RequestBody;

    invoke-virtual {p1, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 130
    iget-object v0, p0, Lcom/sakukelly/music/domain/scrobbling/LastFmService$scrobble$2;->this$0:Lcom/sakukelly/music/domain/scrobbling/LastFmService;

    invoke-static {v0}, Lcom/sakukelly/music/domain/scrobbling/LastFmService;->access$getClient$p(Lcom/sakukelly/music/domain/scrobbling/LastFmService;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
