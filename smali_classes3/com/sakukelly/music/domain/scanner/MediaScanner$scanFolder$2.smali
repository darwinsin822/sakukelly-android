.class final Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanFolder(Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,272:1\n1557#2:273\n1628#2,3:274\n1557#2:277\n1628#2,3:278\n*S KotlinDebug\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2\n*L\n184#1:273\n184#1:274,3\n185#1:277\n185#1:278,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
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
    c = "com.sakukelly.music.domain.scanner.MediaScanner$scanFolder$2"
    f = "MediaScanner.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x2
    }
    l = {
        0xb4,
        0xbc,
        0xc0
    }
    m = "invokeSuspend"
    n = {
        "songMap",
        "songSignatures",
        "artworkLoader",
        "songMap",
        "songsList"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dao:Lcom/sakukelly/music/data/db/SongDao;

.field final synthetic $deduplicateScan:Z

.field final synthetic $folder:Ljava/io/File;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Ljava/io/File;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sakukelly/music/data/db/SongDao;",
            "Ljava/io/File;",
            "Lcom/sakukelly/music/domain/scanner/MediaScanner;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$folder:Ljava/io/File;

    iput-object p4, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iput-boolean p5, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$deduplicateScan:Z

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

    new-instance p1, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    iget-object v3, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$folder:Ljava/io/File;

    iget-object v4, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iget-boolean v5, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$deduplicateScan:Z

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;-><init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Ljava/io/File;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$2:Ljava/lang/Object;

    check-cast v2, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v7, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$1:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashSet;

    iget-object v8, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    check-cast v8, Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v9, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 176
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 177
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 178
    new-instance v2, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v9, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$context:Landroid/content/Context;

    invoke-direct {v2, v9}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;-><init>(Landroid/content/Context;)V

    .line 180
    :try_start_1
    iget-object v9, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    move-object v10, v0

    check-cast v10, Lkotlin/coroutines/Continuation;

    iput-object v8, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->label:I

    invoke-interface {v9, v10}, Lcom/sakukelly/music/data/db/SongDao;->getFavoritesSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_4

    return-object v1

    :cond_4
    :goto_0
    check-cast v9, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 182
    :catch_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v9

    :goto_1
    move-object v11, v2

    move-object v2, v8

    .line 184
    check-cast v9, Ljava/lang/Iterable;

    .line 273
    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 274
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 275
    check-cast v13, Lcom/sakukelly/music/data/model/Song;

    .line 184
    invoke-virtual {v13}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 275
    invoke-interface {v8, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    :cond_5
    check-cast v8, Ljava/util/List;

    .line 273
    check-cast v8, Ljava/lang/Iterable;

    .line 184
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    .line 277
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v9, v10}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v8, Ljava/util/Collection;

    .line 278
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 279
    check-cast v10, Lcom/sakukelly/music/data/model/Song;

    .line 185
    invoke-virtual {v10}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v12

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "toLowerCase(...)"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ":::"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 279
    invoke-interface {v8, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 280
    :cond_6
    check-cast v8, Ljava/util/List;

    .line 277
    check-cast v8, Ljava/lang/Iterable;

    .line 185
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v14

    .line 187
    iget-object v8, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$folder:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$folder:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 188
    iget-object v8, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iget-object v9, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$folder:Ljava/io/File;

    move-object v10, v2

    check-cast v10, Ljava/util/Map;

    move-object v12, v7

    check-cast v12, Ljava/util/Set;

    iget-boolean v15, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$deduplicateScan:Z

    move-object/from16 v16, v0

    check-cast v16, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->label:I

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    move v12, v15

    move-object/from16 v15, v16

    invoke-static/range {v7 .. v15}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->access$scanDirectoryRecursively(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_7

    return-object v1

    .line 190
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v4, "<get-values>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 191
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v5

    if-eqz v4, :cond_9

    .line 192
    iget-object v4, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;->label:I

    invoke-interface {v4, v2, v5}, Lcom/sakukelly/music/data/db/SongDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_8

    return-object v1

    :cond_8
    move-object v1, v2

    :goto_5
    move-object v2, v1

    .line 194
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method
