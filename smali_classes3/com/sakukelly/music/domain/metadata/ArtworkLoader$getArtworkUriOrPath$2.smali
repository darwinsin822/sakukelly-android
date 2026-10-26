.class final Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ArtworkLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->getArtworkUriOrPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArtworkLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArtworkLoader.kt\ncom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n1#2:164\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"
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
    c = "com.sakukelly.music.domain.metadata.ArtworkLoader$getArtworkUriOrPath$2"
    f = "ArtworkLoader.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $album:Ljava/lang/String;

.field final synthetic $artist:Ljava/lang/String;

.field final synthetic $songPath:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/domain/metadata/ArtworkLoader;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iput-object p2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$artist:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    iput-object p4, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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

    new-instance p1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v2, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$artist:Ljava/lang/String;

    iget-object v3, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    iget-object v4, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;-><init>(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 35
    iget v0, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->label:I

    if-nez v0, :cond_10

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 36
    iget-object v0, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    invoke-static {v0}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$getContext$p(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "covers"

    invoke-static {v0, v2}, Lkotlin/io/FilesKt;->resolve(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/tmp/sakukelly_covers"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 39
    :cond_2
    iget-object v2, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v3, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$artist:Ljava/lang/String;

    iget-object v4, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    iget-object v5, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$title:Ljava/lang/String;

    iget-object v6, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "::"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$md5(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".jpg"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_3

    .line 42
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 47
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 49
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 50
    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    invoke-virtual {v0, v8}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v8

    .line 52
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    if-eqz v8, :cond_5

    .line 54
    array-length v0, v8

    if-nez v0, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    xor-int/2addr v0, v7

    if-eqz v0, :cond_5

    .line 55
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v9, v0

    check-cast v9, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v9

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0, v8}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v9, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 56
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 55
    :try_start_3
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v10, v0

    :try_start_4
    invoke-static {v9, v8}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :cond_5
    const/4 v0, 0x2

    .line 65
    :try_start_5
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$songPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 67
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x5

    .line 68
    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "cover.jpg"

    aput-object v10, v9, v2

    const-string v10, "cover.png"

    aput-object v10, v9, v7

    const-string v10, "folder.jpg"

    aput-object v10, v9, v0

    const-string v10, "album.jpg"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    const-string v10, "front.jpg"

    const/4 v11, 0x4

    aput-object v10, v9, v11

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 69
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 70
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    cmp-long v10, v12, v4

    if-lez v10, :cond_6

    .line 72
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object v0

    .line 81
    :catch_1
    :cond_7
    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$artist:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$title:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-nez v8, :cond_8

    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v8

    xor-int/2addr v8, v7

    if-eqz v8, :cond_f

    .line 83
    :cond_8
    :try_start_6
    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$artist:Ljava/lang/String;

    iget-object v9, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/2addr v7, v9

    if-eqz v7, :cond_9

    iget-object v7, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$album:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v7, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->$title:Ljava/lang/String;

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 84
    const-string v8, "UTF-8"

    invoke-static {v7, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "https://itunes.apple.com/search?term="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&entity=song&limit=1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    new-instance v8, Lokhttp3/Request$Builder;

    invoke-direct {v8}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v8, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 88
    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    invoke-static {v8}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$getHttpClient$p(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;)Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8, v7}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v7

    invoke-interface {v7}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v7

    .line 89
    check-cast v7, Ljava/io/Closeable;

    iget-object v8, v1, Lcom/sakukelly/music/domain/metadata/ArtworkLoader$getArtworkUriOrPath$2;->this$0:Lcom/sakukelly/music/domain/metadata/ArtworkLoader;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    move-object v9, v7

    check-cast v9, Lokhttp3/Response;

    .line 90
    invoke-virtual {v9}, Lokhttp3/Response;->isSuccessful()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 91
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    :cond_a
    const-string v9, ""

    .line 92
    :cond_b
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v9, "results"

    invoke-virtual {v10, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 94
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_e

    .line 95
    invoke-virtual {v9, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 96
    const-string v10, "artworkUrl100"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 97
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v9, v11

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_e

    .line 98
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v12, "100x100bb"

    const-string v13, "600x600bb"

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 99
    new-instance v10, Lokhttp3/Request$Builder;

    invoke-direct {v10}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v10, v9}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 100
    invoke-static {v8}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->access$getHttpClient$p(Lcom/sakukelly/music/domain/metadata/ArtworkLoader;)Lokhttp3/OkHttpClient;

    move-result-object v8

    invoke-virtual {v8, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    invoke-interface {v8}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v8

    .line 101
    check-cast v8, Ljava/io/Closeable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    move-object v9, v8

    check-cast v9, Lokhttp3/Response;

    .line 102
    invoke-virtual {v9}, Lokhttp3/Response;->isSuccessful()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 103
    invoke-virtual {v9}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_c

    check-cast v9, Ljava/io/Closeable;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    move-object v10, v9

    check-cast v10, Ljava/io/InputStream;

    .line 104
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    check-cast v11, Ljava/io/Closeable;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    move-object v12, v11

    check-cast v12, Ljava/io/FileOutputStream;

    .line 105
    check-cast v12, Ljava/io/OutputStream;

    invoke-static {v10, v12, v2, v0, v6}, Lkotlin/io/ByteStreamsKt;->copyTo$default(Ljava/io/InputStream;Ljava/io/OutputStream;IILjava/lang/Object;)J

    move-result-wide v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 104
    :try_start_b
    invoke-static {v11, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 106
    invoke-static {v12, v13}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 103
    :try_start_c
    invoke-static {v9, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 104
    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_e
    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    .line 103
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_10
    invoke-static {v9, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 108
    :cond_c
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    cmp-long v0, v9, v4

    if-lez v0, :cond_d

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :try_start_12
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    return-object v0

    .line 112
    :cond_d
    :try_start_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 101
    :try_start_14
    invoke-static {v8, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_15
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 116
    :cond_e
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 89
    :try_start_17
    invoke-static {v7, v6}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_2

    goto :goto_4

    :catchall_8
    move-exception v0

    move-object v2, v0

    :try_start_18
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_19
    invoke-static {v7, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    :catch_2
    :cond_f
    :goto_4
    return-object v6

    .line 35
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
