.class final Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "LyricsRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->getLyrics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/Float;",
        "+",
        "Ljava/lang/String;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0018\u00010\u0001*\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlin/Pair;",
        "",
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
    c = "com.sakukelly.music.domain.lyrics.LyricsRepository$getLyrics$2"
    f = "LyricsRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $path:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/domain/lyrics/LyricsRepository;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    iput-object p2, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$artist:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$path:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6
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

    new-instance p1, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    iget-object v2, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$artist:Ljava/lang/String;

    iget-object v3, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$path:Ljava/lang/String;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;-><init>(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    const-string v0, "getInputStream(...)"

    const-string v1, "GET"

    const-string v2, "null cannot be cast to non-null type java.net.HttpURLConnection"

    const-string v3, "UTF-8"

    const-string v4, "https://api.lyrics.ovh/v1/"

    const-string v5, "https://lrclib.net/api/get?artist_name="

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 14
    iget v6, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->label:I

    if-nez v6, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    iget-object v6, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$artist:Ljava/lang/String;

    iget-object v7, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$title:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "::"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$md5(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    iget-object v6, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v6}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 17
    iget-object v0, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v0}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$path:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v6}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ".lrc"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 23
    sget-object v6, Lcom/sakukelly/music/domain/lyrics/LrcParser;->INSTANCE:Lcom/sakukelly/music/domain/lyrics/LrcParser;

    const/4 v9, 0x1

    invoke-static {v7, v8, v9, v8}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sakukelly/music/domain/lyrics/LrcParser;->parseLrc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 24
    move-object v7, v6

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v9

    if-eqz v7, :cond_1

    .line 25
    iget-object v0, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v0}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0x2000

    const/16 v9, 0xc8

    .line 31
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$artist:Ljava/lang/String;

    invoke-static {v11, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$title:Ljava/lang/String;

    invoke-static {v12, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "&track_name="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 33
    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    if-ne v10, v9, :cond_4

    .line 35
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v5, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v11, Ljava/io/Reader;

    instance-of v5, v11, Ljava/io/BufferedReader;

    if-eqz v5, :cond_2

    check-cast v11, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v11, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v11, v5

    :goto_0
    check-cast v11, Ljava/io/Reader;

    invoke-static {v11}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v5

    .line 36
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v5, "syncedLyrics"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v11, v5

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 39
    sget-object v10, Lcom/sakukelly/music/domain/lyrics/LrcParser;->INSTANCE:Lcom/sakukelly/music/domain/lyrics/LrcParser;

    invoke-virtual {v10, v5}, Lcom/sakukelly/music/domain/lyrics/LrcParser;->parseLrc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 40
    iget-object v10, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v10}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v5

    .line 43
    :cond_3
    const-string v5, "plainLyrics"

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v10, v5

    check-cast v10, Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 45
    new-instance v10, Lkotlin/Pair;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v11

    invoke-direct {v10, v11, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 46
    iget-object v10, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v10}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v5

    .line 51
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    :cond_4
    :try_start_1
    new-instance v5, Ljava/net/URL;

    iget-object v10, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$artist:Ljava/lang/String;

    invoke-static {v10, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->$title:Ljava/lang/String;

    invoke-static {v11, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, "/"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 57
    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v9, :cond_6

    .line 59
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    check-cast v2, Ljava/io/Reader;

    instance-of v0, v2, Ljava/io/BufferedReader;

    if-eqz v0, :cond_5

    check-cast v2, Ljava/io/BufferedReader;

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v2, v0

    :goto_1
    check-cast v2, Ljava/io/Reader;

    invoke-static {v2}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v0, "lyrics"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 63
    new-instance v1, Lkotlin/Pair;

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/sakukelly/music/domain/lyrics/LyricsRepository$getLyrics$2;->this$0:Lcom/sakukelly/music/domain/lyrics/LyricsRepository;

    invoke-static {v1}, Lcom/sakukelly/music/domain/lyrics/LyricsRepository;->access$getMemoryCache$p(Lcom/sakukelly/music/domain/lyrics/LyricsRepository;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-object v8

    .line 14
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
