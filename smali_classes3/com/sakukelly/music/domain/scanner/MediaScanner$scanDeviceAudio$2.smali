.class final Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MediaScanner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanDeviceAudio(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nMediaScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1557#2:273\n1628#2,3:274\n1557#2:277\n1628#2,3:278\n1663#2,8:282\n1782#2,4:290\n1#3:281\n*S KotlinDebug\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2\n*L\n40#1:273\n40#1:274,3\n41#1:277\n41#1:278,3\n158#1:282,8\n171#1:290,4\n*E\n"
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
    c = "com.sakukelly.music.domain.scanner.MediaScanner$scanDeviceAudio$2"
    f = "MediaScanner.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x1,
        0x2,
        0x2,
        0x2,
        0x2,
        0x2,
        0x3,
        0x4
    }
    l = {
        0x24,
        0x80,
        0xa2,
        0xa8,
        0xa9
    }
    m = "invokeSuspend"
    n = {
        "songMap",
        "songSignatures",
        "artworkLoader",
        "songMap",
        "songSignatures",
        "artworkLoader",
        "favoritePaths",
        "favoriteSignatures",
        "c",
        "title",
        "artist",
        "canonicalPath",
        "year",
        "album",
        "signature",
        "idCol",
        "dataCol",
        "titleCol",
        "artistCol",
        "albumCol",
        "albumIdCol",
        "durCol",
        "yearCol",
        "duration",
        "songMap",
        "songSignatures",
        "artworkLoader",
        "favoritePaths",
        "favoriteSignatures",
        "songsList",
        "songsList"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$7",
        "L$8",
        "L$9",
        "L$10",
        "L$11",
        "L$12",
        "L$13",
        "I$0",
        "I$1",
        "I$2",
        "I$3",
        "I$4",
        "I$5",
        "I$6",
        "I$7",
        "J$0",
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dao:Lcom/sakukelly/music/data/db/SongDao;

.field final synthetic $deduplicateScan:Z

.field I$0:I

.field I$1:I

.field I$2:I

.field I$3:I

.field I$4:I

.field I$5:I

.field I$6:I

.field I$7:I

.field J$0:J

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$11:Ljava/lang/Object;

.field L$12:Ljava/lang/Object;

.field L$13:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sakukelly/music/data/db/SongDao;",
            "Lcom/sakukelly/music/domain/scanner/MediaScanner;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    iput-object p3, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iput-boolean p4, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$deduplicateScan:Z

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

    new-instance p1, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;

    iget-object v1, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    iget-object v3, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iget-boolean v4, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$deduplicateScan:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;-><init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/coroutines/Continuation;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 50

    move-object/from16 v7, p0

    const-string v0, "year"

    const-string v1, "duration"

    const-string v2, "album_id"

    const-string v3, "album"

    const-string v4, "artist"

    const-string v5, "title"

    const-string v6, "_data"

    const-string v8, "_id"

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v9

    .line 29
    iget v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I

    const-string v13, "MediaScanner"

    const-string v15, ":::"

    const-string v11, "toLowerCase(...)"

    const/4 v12, 0x1

    if-eqz v10, :cond_5

    if-eq v10, v12, :cond_4

    const/4 v14, 0x2

    if-eq v10, v14, :cond_3

    const/4 v1, 0x3

    if-eq v10, v1, :cond_2

    const/4 v1, 0x4

    if-eq v10, v1, :cond_1

    const/4 v1, 0x5

    if-ne v10, v1, :cond_0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v1, v13

    const/4 v4, 0x0

    goto/16 :goto_37

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v12, v7

    move-object v2, v9

    move-object v1, v13

    const/4 v4, 0x0

    goto/16 :goto_36

    :cond_2
    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v1, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$4:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    iget-object v2, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v3, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v4, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/HashSet;

    iget-object v5, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    check-cast v5, Ljava/util/LinkedHashMap;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v6, v3

    move-object v8, v5

    move-object v12, v7

    const/4 v11, 0x3

    move-object v3, v1

    move-object v5, v2

    move-object v7, v4

    move-object v2, v9

    move-object v1, v13

    const/4 v4, 0x0

    goto/16 :goto_35

    :cond_3
    iget-wide v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->J$0:J

    iget v2, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$7:I

    iget v3, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$6:I

    iget v4, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$5:I

    iget v5, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$4:I

    iget v6, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$3:I

    iget v8, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$2:I

    iget v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$1:I

    iget v14, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$0:I

    iget-boolean v12, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->Z$0:Z

    move-wide/from16 v17, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$13:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$12:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$11:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$10:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$9:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$8:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$7:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    move-object/from16 v24, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$6:Ljava/lang/Object;

    check-cast v0, Lcom/sakukelly/music/domain/scanner/MediaScanner;

    move-object/from16 v25, v0

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$5:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/io/Closeable;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$4:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Ljava/util/Set;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$3:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/util/Set;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/HashSet;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Ljava/util/LinkedHashMap;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v33, v3

    move-object/from16 v35, v11

    move-wide/from16 v37, v17

    move-object/from16 v0, v25

    move-object/from16 v11, v26

    move-object/from16 v25, v1

    move v3, v2

    move-object v2, v9

    move/from16 v26, v12

    move-object/from16 v17, v13

    move-object/from16 v13, v28

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move-object v12, v7

    move/from16 v28, v10

    move-object/from16 v10, v19

    move-object/from16 v7, v21

    goto/16 :goto_1c

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v12, v7

    move-object v2, v9

    move-object/from16 v17, v13

    :goto_0
    move-object/from16 v11, v26

    goto/16 :goto_2e

    :cond_4
    iget-object v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    iget-object v12, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/HashSet;

    iget-object v14, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    check-cast v14, Ljava/util/LinkedHashMap;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v18, v0

    move-object/from16 v17, v13

    move-object/from16 v0, p1

    goto :goto_1

    :catch_0
    move-object/from16 v18, v0

    move-object/from16 v17, v13

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 30
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 31
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 32
    new-instance v10, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    move-object/from16 v17, v13

    iget-object v13, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$context:Landroid/content/Context;

    invoke-direct {v10, v13}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;-><init>(Landroid/content/Context;)V

    .line 36
    :try_start_2
    iget-object v13, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v0

    :try_start_3
    move-object v0, v7

    check-cast v0, Lkotlin/coroutines/Continuation;

    iput-object v14, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    iput-object v12, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    iput-object v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 p1, v10

    const/4 v10, 0x1

    :try_start_4
    iput v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I

    invoke-interface {v13, v0}, Lcom/sakukelly/music/data/db/SongDao;->getFavoritesSync(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-ne v0, v9, :cond_6

    return-object v9

    :cond_6
    move-object/from16 v10, p1

    :goto_1
    :try_start_5
    check-cast v0, Ljava/util/List;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_1
    move-object/from16 v10, p1

    goto :goto_2

    :catch_2
    move-object/from16 v18, v0

    :catch_3
    move-object/from16 p1, v10

    .line 38
    :catch_4
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_3
    move-object/from16 v29, v10

    move-object/from16 v30, v12

    move-object/from16 v31, v14

    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 273
    new-instance v10, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 274
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 275
    check-cast v14, Lcom/sakukelly/music/data/model/Song;

    .line 40
    invoke-virtual {v14}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 275
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 276
    :cond_7
    check-cast v10, Ljava/util/List;

    .line 273
    check-cast v10, Ljava/lang/Iterable;

    .line 40
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v28

    .line 277
    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .line 278
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 279
    check-cast v12, Lcom/sakukelly/music/data/model/Song;

    .line 41
    invoke-virtual {v12}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v12

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/CharSequence;

    invoke-static {v12}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 279
    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 280
    :cond_8
    check-cast v10, Ljava/util/List;

    .line 277
    check-cast v10, Ljava/lang/Iterable;

    .line 41
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v27

    const/16 v0, 0x9

    .line 46
    :try_start_6
    new-array v0, v0, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v8, v0, v10

    const/4 v10, 0x1

    .line 47
    aput-object v6, v0, v10

    const/4 v10, 0x2

    .line 48
    aput-object v5, v0, v10

    const/4 v10, 0x3

    .line 49
    aput-object v4, v0, v10

    const/4 v10, 0x4

    .line 50
    aput-object v3, v0, v10

    const/4 v10, 0x5

    .line 51
    aput-object v2, v0, v10

    const/4 v10, 0x6

    .line 52
    aput-object v1, v0, v10

    const/4 v10, 0x7

    .line 53
    aput-object v18, v0, v10

    .line 54
    const-string v10, "is_music"

    const/16 v12, 0x8

    aput-object v10, v0, v12

    .line 57
    const-string v22, "duration >= 15000"

    .line 59
    iget-object v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 60
    sget-object v20, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 64
    const-string v24, "title ASC"

    const/16 v23, 0x0

    move-object/from16 v21, v0

    .line 59
    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 67
    move-object/from16 v26, v0

    check-cast v26, Ljava/io/Closeable;

    iget-object v0, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    iget-boolean v10, v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$deduplicateScan:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :try_start_7
    move-object/from16 v12, v26

    check-cast v12, Landroid/database/Cursor;

    .line 68
    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 69
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 70
    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 71
    invoke-interface {v12, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 72
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 73
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 74
    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v13, v18

    .line 75
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_15

    move v14, v3

    move-object/from16 v18, v9

    move v3, v10

    move-object/from16 v19, v26

    move-object/from16 v20, v27

    move-object/from16 v21, v28

    move-object/from16 v22, v29

    move-object/from16 v9, v30

    const/16 p1, 0x0

    move v10, v1

    move-object/from16 v1, v31

    move/from16 v48, v8

    move-object v8, v0

    move-object v0, v12

    move v12, v2

    move/from16 v2, v48

    move/from16 v49, v6

    move v6, v4

    move/from16 v4, v49

    .line 77
    :goto_6
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_14

    if-eqz v23, :cond_28

    const-wide/16 v23, -0x1

    const/4 v7, -0x1

    if-eq v2, v7, :cond_9

    .line 78
    :try_start_9
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-wide/from16 v48, v25

    move-object/from16 v26, v1

    move/from16 v25, v2

    move-wide/from16 v1, v48

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v31, v1

    move-object/from16 v30, v9

    :goto_7
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v29, v22

    goto/16 :goto_24

    :cond_9
    move-object/from16 v26, v1

    move/from16 v25, v2

    move-wide/from16 v1, v23

    :goto_8
    if-eq v4, v7, :cond_a

    .line 79
    :try_start_a
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v7, v27

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    move-object/from16 v30, v9

    :goto_9
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v29, v22

    move-object/from16 v31, v26

    goto/16 :goto_2e

    :cond_a
    const/4 v7, 0x0

    .line 82
    :goto_a
    :try_start_b
    move-object/from16 v28, v7

    check-cast v28, Ljava/lang/CharSequence;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    if-eqz v28, :cond_c

    :try_start_c
    invoke-static/range {v28 .. v28}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v28
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v28, :cond_b

    goto :goto_b

    .line 84
    :cond_b
    :try_start_d
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :cond_c
    :goto_b
    cmp-long v7, v1, v23

    if-eqz v7, :cond_27

    .line 90
    :try_start_e
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    .line 96
    :catch_5
    :cond_d
    :goto_c
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "/"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_12

    move/from16 v28, v4

    move-object/from16 v29, v9

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    :try_start_f
    invoke-static {v7, v1, v4, v2, v9}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_11

    if-eqz v1, :cond_f

    .line 97
    :try_start_10
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v8}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    move/from16 v31, v5

    move/from16 v30, v6

    goto/16 :goto_26

    :catchall_3
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    move-object/from16 v31, v26

    goto/16 :goto_2d

    :cond_f
    const/4 v1, -0x1

    if-eq v5, v1, :cond_10

    .line 103
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d

    :cond_10
    const/4 v1, 0x0

    :goto_d
    if-eqz v1, :cond_12

    .line 104
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_11

    goto :goto_e

    :cond_11
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_12

    goto :goto_f

    :cond_12
    :try_start_11
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    :goto_f
    move-object v9, v1

    const/4 v1, -0x1

    if-eq v6, v1, :cond_13

    .line 105
    :try_start_12
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10

    :cond_13
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_15

    .line 106
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_14

    const-string v2, "<unknown>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-nez v2, :cond_14

    goto :goto_11

    :cond_14
    const/4 v1, 0x0

    :goto_11
    if-eqz v1, :cond_15

    goto :goto_12

    :cond_15
    :try_start_13
    const-string v1, "Artista Desconocido"
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_11

    :goto_12
    move-object v4, v1

    const/4 v1, -0x1

    if-eq v14, v1, :cond_16

    .line 107
    :try_start_14
    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_16
    const/4 v1, 0x0

    :goto_13
    if-eqz v1, :cond_18

    .line 108
    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_17

    const-string v2, "<unknown>"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v2, :cond_17

    goto :goto_14

    :cond_17
    const/4 v1, 0x0

    :goto_14
    if-eqz v1, :cond_18

    goto :goto_15

    :cond_18
    :try_start_15
    const-string v1, "\u00c1lbum Desconocido"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_11

    :goto_15
    move-object v2, v1

    const/4 v1, -0x1

    if-eq v10, v1, :cond_19

    .line 109
    :try_start_16
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v48, v30

    move/from16 v31, v5

    move/from16 v30, v6

    move-wide/from16 v5, v48

    goto :goto_16

    :cond_19
    move/from16 v31, v5

    move/from16 v30, v6

    const-wide/32 v5, 0x2bf20

    :goto_16
    if-eq v13, v1, :cond_1a

    .line 110
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v1, ""
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_17

    :cond_1a
    :try_start_17
    const-string v1, ""
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_11

    :cond_1b
    :goto_17
    move/from16 v27, v13

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1c

    .line 111
    :try_start_18
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-wide/from16 v48, v32

    move/from16 v33, v10

    move/from16 v32, v12

    move-wide/from16 v12, v48

    goto :goto_18

    :cond_1c
    move/from16 v33, v10

    move/from16 v32, v12

    move-wide/from16 v12, v23

    .line 114
    :goto_18
    :try_start_19
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move/from16 v34, v14

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v35, v11

    const/16 v11, 0x3e8

    move-object/from16 v37, v1

    move-object/from16 v36, v2

    int-to-long v1, v11

    div-long v1, v5, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    if-eqz v3, :cond_1e

    move-object/from16 v11, v29

    .line 115
    :try_start_1a
    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-nez v1, :cond_1d

    goto :goto_19

    :cond_1d
    move-object/from16 v1, v26

    goto :goto_1a

    :catchall_4
    move-exception v0

    move-object/from16 v12, p0

    move-object v1, v0

    move-object/from16 v30, v11

    goto/16 :goto_9

    :cond_1e
    move-object/from16 v11, v29

    :goto_19
    move-object/from16 v1, v26

    :try_start_1b
    invoke-virtual {v1, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    if-eqz v2, :cond_1f

    :goto_1a
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move/from16 v26, v3

    move-object/from16 v29, v11

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v13, v21

    move/from16 v24, v25

    move-object/from16 v47, v35

    move-object/from16 v19, v0

    move/from16 v0, v27

    move-object/from16 v27, v20

    move-object/from16 v20, v1

    goto/16 :goto_27

    :cond_1f
    cmp-long v2, v12, v23

    if-eqz v2, :cond_20

    .line 122
    :try_start_1c
    const-string v2, "content://media/external/audio/albumart"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 121
    invoke-static {v2, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    goto :goto_1b

    :catchall_5
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v31, v1

    move-object/from16 v30, v11

    goto/16 :goto_7

    :cond_20
    const/4 v2, 0x0

    :goto_1b
    if-nez v2, :cond_23

    .line 127
    :try_start_1d
    const-string v12, "/"

    move-object/from16 v23, v2

    const/4 v2, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static {v7, v12, v14, v13, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_10

    if-eqz v12, :cond_22

    move-object/from16 v12, p0

    .line 128
    :try_start_1e
    iput-object v1, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_d

    move-object/from16 v2, v22

    :try_start_1f
    iput-object v2, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    move-object/from16 v13, v21

    :try_start_20
    iput-object v13, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$3:Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    move-object/from16 v14, v20

    :try_start_21
    iput-object v14, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$4:Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    move-object/from16 v29, v11

    move-object/from16 v11, v19

    :try_start_22
    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$5:Ljava/lang/Object;

    iput-object v8, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$6:Ljava/lang/Object;

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$7:Ljava/lang/Object;

    iput-object v9, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$8:Ljava/lang/Object;

    iput-object v4, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$9:Ljava/lang/Object;

    iput-object v7, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$10:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v37

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$11:Ljava/lang/Object;

    move-object/from16 v37, v0

    move-object/from16 v0, v36

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$12:Ljava/lang/Object;

    iput-object v10, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$13:Ljava/lang/Object;

    iput-boolean v3, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->Z$0:Z

    move-object/from16 v36, v0

    move/from16 v0, v25

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$0:I

    move/from16 v25, v0

    move/from16 v0, v28

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$1:I

    move/from16 v28, v0

    move/from16 v0, v31

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$2:I

    move/from16 v31, v0

    move/from16 v0, v30

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$3:I

    move/from16 v30, v0

    move/from16 v0, v34

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$4:I

    move/from16 v34, v0

    move/from16 v0, v32

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$5:I

    move/from16 v32, v0

    move/from16 v0, v33

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$6:I

    move/from16 v33, v0

    move/from16 v0, v27

    iput v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->I$7:I

    iput-wide v5, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->J$0:J
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move-object/from16 v26, v1

    const/4 v1, 0x2

    :try_start_23
    iput v1, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_8

    move-object/from16 v22, v2

    move-object/from16 v27, v14

    move-object/from16 v20, v26

    move-object/from16 v21, v37

    move-object/from16 v14, p1

    move-object/from16 v1, v22

    move/from16 v24, v25

    move-object/from16 v25, v36

    move-object v2, v7

    move/from16 v26, v3

    move-object v3, v4

    move-object/from16 v36, v4

    move-object/from16 v4, v25

    move-wide/from16 v37, v5

    move-object v5, v9

    move-object/from16 v6, p0

    :try_start_24
    invoke-virtual/range {v1 .. v6}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->getArtworkUriOrPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    move-object/from16 v2, v18

    if-ne v1, v2, :cond_21

    return-object v2

    :cond_21
    move v3, v0

    move-object v0, v8

    move-object/from16 v23, v9

    move-object v9, v14

    move/from16 v14, v24

    move/from16 v6, v30

    move/from16 v8, v31

    move/from16 v4, v32

    move/from16 v5, v34

    move-object/from16 v24, v19

    move-object/from16 v31, v20

    move-object/from16 v20, v21

    move-object/from16 v30, v29

    move-object/from16 v29, v22

    move-object/from16 v22, v36

    .line 29
    :goto_1c
    :try_start_25
    check-cast v1, Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    move/from16 v36, v3

    move/from16 v34, v4

    move/from16 v39, v5

    move-object/from16 v40, v11

    move-object v4, v13

    move/from16 p1, v14

    move-object/from16 v5, v22

    move-object/from16 v41, v24

    move-object/from16 v22, v25

    move/from16 v42, v26

    move-object/from16 v3, v27

    move/from16 v43, v28

    move-object/from16 v44, v29

    move/from16 v13, v33

    move-object v14, v9

    move-object v11, v10

    move-object/from16 v24, v20

    move-object/from16 v10, v30

    move-object v9, v0

    move-object/from16 v0, v23

    move-object/from16 v48, v31

    move-object/from16 v31, v1

    move-object/from16 v1, v48

    goto/16 :goto_1f

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v28, v13

    goto/16 :goto_2e

    :catchall_7
    move-exception v0

    goto :goto_1d

    :catchall_8
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v27, v14

    move-object/from16 v2, v18

    goto/16 :goto_29

    :catchall_9
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v27, v14

    :goto_1d
    move-object/from16 v2, v18

    goto/16 :goto_2c

    :catchall_a
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    move-object/from16 v29, v11

    move-object/from16 v27, v14

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    goto/16 :goto_2c

    :catchall_b
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v29, v11

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    goto/16 :goto_2b

    :catchall_c
    move-exception v0

    move-object/from16 v22, v2

    goto/16 :goto_25

    :catchall_d
    move-exception v0

    goto/16 :goto_25

    :cond_22
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    goto :goto_1e

    :cond_23
    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v23, v2

    :goto_1e
    move/from16 v26, v3

    move-object/from16 v29, v11

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v13, v21

    move/from16 v24, v25

    move-object/from16 v25, v36

    move-object/from16 v21, v37

    move-object/from16 v19, v0

    move-object/from16 v36, v4

    move-wide/from16 v37, v5

    move/from16 v0, v27

    move-object/from16 v27, v20

    move-object/from16 v20, v1

    move-object/from16 v40, v11

    move-object v4, v13

    move-object/from16 v41, v19

    move-object/from16 v1, v20

    move-object/from16 v44, v22

    move/from16 p1, v24

    move-object/from16 v22, v25

    move/from16 v42, v26

    move-object/from16 v3, v27

    move/from16 v43, v28

    move/from16 v6, v30

    move/from16 v13, v33

    move/from16 v39, v34

    move-object/from16 v5, v36

    move/from16 v36, v0

    move-object v0, v9

    move-object v11, v10

    move-object/from16 v24, v21

    move-object/from16 v10, v29

    move/from16 v34, v32

    move-object v9, v8

    move/from16 v8, v31

    move-object/from16 v31, v23

    .line 131
    :goto_1f
    :try_start_26
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v18
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_f

    if-nez v18, :cond_25

    move-object/from16 v45, v4

    .line 132
    :try_start_27
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move/from16 v46, v6

    move-object/from16 v6, v35

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v35, v8

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v47, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    goto :goto_20

    :cond_24
    const/16 v27, 0x0

    goto :goto_21

    :catchall_e
    move-exception v0

    goto/16 :goto_23

    :cond_25
    move-object/from16 v45, v4

    move/from16 v46, v6

    move-object/from16 v47, v35

    move/from16 v35, v8

    :goto_20
    const/16 v27, 0x1

    .line 134
    :goto_21
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    .line 136
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-wide/16 v18, 0x0

    cmp-long v6, v37, v18

    if-lez v6, :cond_26

    move-wide/from16 v25, v37

    goto :goto_22

    :cond_26
    const-wide/32 v25, 0x2bf20

    .line 135
    :goto_22
    new-instance v6, Lcom/sakukelly/music/data/model/Song;

    .line 140
    const-string v23, ""

    const/16 v32, 0x700

    const/16 v33, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    .line 135
    invoke-direct/range {v18 .. v33}, Lcom/sakukelly/music/data/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_e

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object v8, v9

    move-object v9, v10

    move-object v7, v12

    move v10, v13

    move/from16 v12, v34

    move/from16 v5, v35

    move/from16 v13, v36

    move-object/from16 v19, v40

    move-object/from16 v0, v41

    move/from16 v3, v42

    move/from16 v4, v43

    move-object/from16 v22, v44

    move-object/from16 v21, v45

    move/from16 v6, v46

    move-object/from16 v11, v47

    move/from16 v2, p1

    move-object/from16 p1, v14

    move/from16 v14, v39

    goto/16 :goto_6

    :catchall_f
    move-exception v0

    move-object/from16 v45, v4

    :goto_23
    move-object/from16 v31, v1

    move-object/from16 v27, v3

    move-object/from16 v30, v10

    move-object/from16 v11, v40

    move-object/from16 v29, v44

    move-object/from16 v28, v45

    :goto_24
    move-object v1, v0

    goto/16 :goto_2e

    :catchall_10
    move-exception v0

    move-object/from16 v12, p0

    :goto_25
    move-object/from16 v29, v11

    goto/16 :goto_2a

    :catchall_11
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_28

    :cond_27
    move/from16 v28, v4

    move/from16 v31, v5

    move/from16 v30, v6

    move-object/from16 v29, v9

    :goto_26
    move/from16 v33, v10

    move-object/from16 v47, v11

    move/from16 v32, v12

    move/from16 v34, v14

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move/from16 v24, v25

    move-object/from16 v20, v26

    move-object/from16 v12, p0

    move-object/from16 v14, p1

    move-object/from16 v19, v0

    move/from16 v26, v3

    move v0, v13

    move-object/from16 v13, v21

    :goto_27
    move-object/from16 v18, v2

    move-object v7, v12

    move-object/from16 v21, v13

    move-object/from16 p1, v14

    move-object/from16 v1, v20

    move/from16 v2, v24

    move/from16 v3, v26

    move-object/from16 v20, v27

    move/from16 v4, v28

    move-object/from16 v9, v29

    move/from16 v6, v30

    move/from16 v5, v31

    move/from16 v12, v32

    move/from16 v10, v33

    move/from16 v14, v34

    move v13, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v47

    goto/16 :goto_6

    :catchall_12
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v29, v9

    :goto_28
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v13, v21

    :goto_29
    move-object/from16 v20, v26

    goto :goto_2c

    :cond_28
    move-object/from16 v14, p1

    move-object v12, v7

    move-object/from16 v29, v9

    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v13, v21

    move-object/from16 v20, v1

    .line 147
    :try_start_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_13

    .line 67
    :try_start_29
    invoke-static {v11, v14}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_6

    move-object/from16 v28, v13

    move-object/from16 v31, v20

    move-object/from16 v30, v29

    move-object/from16 v29, v22

    goto :goto_2f

    :catch_6
    move-exception v0

    move-object/from16 v28, v13

    move-object/from16 v31, v20

    move-object/from16 v30, v29

    move-object/from16 v29, v22

    goto :goto_30

    :catchall_13
    move-exception v0

    goto :goto_2c

    :catchall_14
    move-exception v0

    move-object v12, v7

    move-object/from16 v29, v9

    :goto_2a
    move-object/from16 v2, v18

    move-object/from16 v11, v19

    move-object/from16 v27, v20

    move-object/from16 v13, v21

    :goto_2b
    move-object/from16 v20, v1

    :goto_2c
    move-object v1, v0

    move-object/from16 v28, v13

    move-object/from16 v31, v20

    :goto_2d
    move-object/from16 v30, v29

    move-object/from16 v29, v22

    goto :goto_2e

    :catchall_15
    move-exception v0

    move-object v12, v7

    move-object v2, v9

    move-object v1, v0

    goto/16 :goto_0

    :goto_2e
    :try_start_2a
    throw v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_16

    :catchall_16
    move-exception v0

    move-object v3, v0

    :try_start_2b
    invoke-static {v11, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_7

    :catch_7
    move-exception v0

    goto :goto_30

    :cond_29
    move-object v12, v7

    move-object v2, v9

    :goto_2f
    move-object/from16 v1, v17

    goto :goto_31

    :catch_8
    move-exception v0

    move-object v12, v7

    move-object v2, v9

    .line 149
    :goto_30
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "MediaStore scan error: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    const/4 v3, 0x4

    .line 154
    new-array v0, v3, [Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 155
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v0, v5

    .line 156
    new-instance v3, Ljava/io/File;

    const-string v5, "/storage/emulated/0/Music"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_32

    :cond_2a
    const/4 v3, 0x0

    :goto_32
    const/4 v5, 0x2

    aput-object v3, v0, v5

    .line 157
    new-instance v3, Ljava/io/File;

    const-string v5, "/storage/emulated/0/Download"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2b

    goto :goto_33

    :cond_2b
    const/4 v3, 0x0

    :goto_33
    const/4 v5, 0x3

    aput-object v3, v0, v5

    .line 153
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 282
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 283
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 284
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2c
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 285
    move-object v7, v6

    check-cast v7, Ljava/io/File;

    .line 158
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 286
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 287
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 289
    :cond_2d
    check-cast v5, Ljava/util/List;

    .line 160
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v3, v27

    move-object/from16 v5, v28

    move-object/from16 v6, v29

    move-object/from16 v7, v30

    move-object/from16 v8, v31

    :cond_2e
    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v18, v9

    check-cast v18, Ljava/io/File;

    .line 161
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 162
    iget-object v9, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->this$0:Lcom/sakukelly/music/domain/scanner/MediaScanner;

    move-object/from16 v19, v8

    check-cast v19, Ljava/util/Map;

    move-object/from16 v20, v7

    check-cast v20, Ljava/util/Set;

    iget-boolean v10, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$deduplicateScan:Z

    move-object/from16 v25, v12

    check-cast v25, Lkotlin/coroutines/Continuation;

    iput-object v8, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    iput-object v7, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;

    iput-object v5, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$3:Ljava/lang/Object;

    iput-object v3, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$4:Ljava/lang/Object;

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$5:Ljava/lang/Object;

    const/4 v11, 0x0

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$6:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$7:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$8:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$9:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$10:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$11:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$12:Ljava/lang/Object;

    iput-object v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$13:Ljava/lang/Object;

    const/4 v11, 0x3

    iput v11, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I

    move-object/from16 v17, v9

    move-object/from16 v21, v6

    move/from16 v22, v10

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    invoke-static/range {v17 .. v25}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->access$scanDirectoryRecursively(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v2, :cond_2e

    return-object v2

    :cond_2f
    const/4 v11, 0x3

    goto :goto_35

    .line 166
    :cond_30
    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v3, "<get-values>(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 167
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_32

    .line 168
    iget-object v3, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    move-object v5, v12

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x0

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$1:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$2:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$3:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$4:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$5:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$6:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$7:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$8:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$9:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$10:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$11:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$12:Ljava/lang/Object;

    iput-object v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$13:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I

    invoke-interface {v3, v5}, Lcom/sakukelly/music/data/db/SongDao;->deleteAllSongs(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_31

    return-object v2

    .line 169
    :cond_31
    :goto_36
    iget-object v3, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->$dao:Lcom/sakukelly/music/data/db/SongDao;

    move-object v5, v12

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v0, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->L$0:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v12, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;->label:I

    invoke-interface {v3, v0, v5}, Lcom/sakukelly/music/data/db/SongDao;->insertAll(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_32

    return-object v2

    .line 171
    :cond_32
    :goto_37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 290
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_33

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_39

    .line 292
    :cond_33
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_34
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sakukelly/music/data/model/Song;

    .line 171
    invoke-virtual {v5}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v5

    if-eqz v5, :cond_34

    add-int/lit8 v4, v4, 0x1

    if-gez v4, :cond_34

    .line 292
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_38

    .line 293
    :cond_35
    :goto_39
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Scanned total "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unique local songs ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " favoritas conservadas)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
