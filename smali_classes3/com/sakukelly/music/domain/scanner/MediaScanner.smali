.class public final Lcom/sakukelly/music/domain/scanner/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/domain/scanner/MediaScanner$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaScanner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,272:1\n1317#2:273\n1318#2:275\n1#3:274\n*S KotlinDebug\n*F\n+ 1 MediaScanner.kt\ncom/sakukelly/music/domain/scanner/MediaScanner\n*L\n210#1:273\n210#1:275\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u0000 #2\u00020\u0001:\u0001#B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\t\u001a\u00020\u0006J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0012J4\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0086@\u00a2\u0006\u0002\u0010\u0016Jj\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001b0\u001a2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00112\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000e\u0008\u0002\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082@\u00a2\u0006\u0002\u0010\"R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006$"
    }
    d2 = {
        "Lcom/sakukelly/music/domain/scanner/MediaScanner;",
        "",
        "<init>",
        "()V",
        "supportedExtensions",
        "",
        "",
        "getSupportedExtensions",
        "()Ljava/util/Set;",
        "getDefaultMusicFolder",
        "scanDeviceAudio",
        "",
        "context",
        "Landroid/content/Context;",
        "dao",
        "Lcom/sakukelly/music/data/db/SongDao;",
        "deduplicateScan",
        "",
        "(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scanFolder",
        "folder",
        "Ljava/io/File;",
        "(Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "scanDirectoryRecursively",
        "",
        "resultMap",
        "",
        "Lcom/sakukelly/music/data/model/Song;",
        "signatures",
        "",
        "artworkLoader",
        "Lcom/sakukelly/music/domain/metadata/ArtworkLoader;",
        "favoritePaths",
        "favoriteSignatures",
        "(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Lcom/sakukelly/music/domain/scanner/MediaScanner$Companion;

.field private static final TAG:Ljava/lang/String; = "MediaScanner"


# instance fields
.field private final supportedExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$sRqo-rL1nz---4x2A2NzaXKBVuM(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanDirectoryRecursively$lambda$0(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/domain/scanner/MediaScanner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/domain/scanner/MediaScanner;->Companion:Lcom/sakukelly/music/domain/scanner/MediaScanner$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sakukelly/music/domain/scanner/MediaScanner;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 23
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mp3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "flac"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wav"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "m4a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "aac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "opus"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wma"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner;->supportedExtensions:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic access$scanDirectoryRecursively(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p8}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanDirectoryRecursively(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic scanDeviceAudio$default(Lcom/sakukelly/music/domain/scanner/MediaScanner;Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x1

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanDeviceAudio(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final scanDirectoryRecursively(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sakukelly/music/domain/metadata/ArtworkLoader;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p8

    instance-of v2, v0, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;

    iget v3, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;

    invoke-direct {v2, v1, v0}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;-><init>(Lcom/sakukelly/music/domain/scanner/MediaScanner;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 197
    iget v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->label:I

    const-string v5, ":::"

    const-string v7, "toLowerCase(...)"

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v8, :cond_1

    iget-wide v9, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->J$0:J

    iget-boolean v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->Z$0:Z

    iget-object v11, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$11:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$10:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$9:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$8:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$7:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v6, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/io/File;

    iget-object v8, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$5:Ljava/lang/Object;

    check-cast v8, Ljava/util/Iterator;

    move/from16 p1, v4

    iget-object v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    move-object/from16 p2, v4

    iget-object v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    move-object/from16 p3, v4

    iget-object v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;

    move-object/from16 p4, v4

    iget-object v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    move-object/from16 p5, v4

    iget-object v4, v2, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$0:Ljava/lang/Object;

    check-cast v4, Ljava/util/Map;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    move-object v3, v4

    move-object/from16 v21, v7

    move-wide/from16 v29, v9

    move-object/from16 v28, v11

    move-object/from16 v26, v12

    move-object v10, v13

    move-object/from16 v9, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v13, p5

    move-object v12, v6

    move/from16 v6, p1

    goto/16 :goto_d

    :catch_0
    move-object/from16 v9, p2

    move-object/from16 v13, p5

    move-object/from16 v18, v3

    move-object v3, v4

    move-object v11, v7

    move-object v0, v8

    move/from16 v4, p1

    move-object/from16 v8, p3

    move-object/from16 v7, p4

    goto/16 :goto_17

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 207
    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/io/FilesKt;->walkTopDown(Ljava/io/File;)Lkotlin/io/FileTreeWalk;

    move-result-object v0

    const/4 v4, 0x6

    .line 208
    invoke-virtual {v0, v4}, Lkotlin/io/FileTreeWalk;->maxDepth(I)Lkotlin/io/FileTreeWalk;

    move-result-object v0

    check-cast v0, Lkotlin/sequences/Sequence;

    .line 209
    new-instance v4, Lcom/sakukelly/music/domain/scanner/MediaScanner$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/sakukelly/music/domain/scanner/MediaScanner$$ExternalSyntheticLambda0;-><init>(Lcom/sakukelly/music/domain/scanner/MediaScanner;)V

    invoke-static {v0, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object v11, v0

    move-object v10, v2

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_15

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    .line 211
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    move-object v14, v13

    goto :goto_3

    :catch_1
    :try_start_3
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 212
    :goto_3
    invoke-interface {v0, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_13

    if-nez v13, :cond_14

    .line 214
    :try_start_4
    new-instance v13, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v13}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 215
    invoke-virtual {v13, v14}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v15, 0x7

    .line 216
    invoke-virtual {v13, v15}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_12

    const/16 v17, 0x0

    if-eqz v15, :cond_4

    .line 217
    :try_start_5
    move-object/from16 v18, v15

    check-cast v18, Ljava/lang/CharSequence;

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v16, 0x1

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v15, v17

    :goto_4
    if-eqz v15, :cond_4

    goto :goto_6

    :catch_2
    move-object v13, v2

    move-object/from16 v18, v3

    move-object v2, v10

    move-object v3, v0

    :goto_5
    move-object v0, v11

    move-object v11, v7

    goto/16 :goto_16

    :cond_4
    :try_start_6
    invoke-static {v12}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    :goto_6
    const/4 v1, 0x2

    .line 218
    invoke-virtual {v13, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12

    if-eqz v1, :cond_6

    .line 219
    :try_start_7
    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/CharSequence;

    invoke-static/range {v18 .. v18}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    const/16 v16, 0x1

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_5

    goto :goto_7

    :cond_5
    move-object/from16 v1, v17

    :goto_7
    if-eqz v1, :cond_6

    goto :goto_8

    :cond_6
    :try_start_8
    const-string v1, "Artista Desconocido"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12

    :goto_8
    move-object/from16 v18, v3

    const/4 v3, 0x1

    .line 220
    :try_start_9
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v19
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11

    if-eqz v19, :cond_8

    .line 221
    :try_start_a
    move-object/from16 v16, v19

    check-cast v16, Ljava/lang/CharSequence;

    invoke-static/range {v16 .. v16}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v16
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    xor-int/lit8 v20, v16, 0x1

    if-eqz v20, :cond_7

    move-object/from16 v17, v19

    :cond_7
    if-eqz v17, :cond_8

    goto :goto_9

    :catch_3
    move-object v3, v0

    move-object v13, v2

    move-object v2, v10

    goto :goto_5

    :cond_8
    :try_start_b
    const-string v3, "\u00c1lbum Desconocido"

    move-object/from16 v17, v3

    :goto_9
    const/16 v3, 0x9

    .line 222
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    if-eqz v3, :cond_9

    .line 223
    :try_start_c
    invoke-static {v3}, Lkotlin/text/StringsKt;->toLongOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v19
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_a

    :cond_9
    const-wide/32 v19, 0x2bf20

    :goto_a
    move-object/from16 p7, v11

    move-wide/from16 v38, v19

    move-object/from16 v19, v12

    move-wide/from16 v11, v38

    const/16 v3, 0x8

    .line 224
    :try_start_d
    invoke-virtual {v13, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_10

    if-nez v3, :cond_a

    :try_start_e
    const-string v3, ""
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_b

    :catch_4
    move-object v3, v0

    move-object v13, v2

    move-object v11, v7

    move-object v2, v10

    move-object/from16 v0, p7

    move-object v7, v4

    move v4, v6

    move-object/from16 v6, v19

    goto/16 :goto_17

    .line 225
    :cond_a
    :goto_b
    :try_start_f
    invoke-virtual {v13}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 227
    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/CharSequence;

    invoke-static {v13}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v3

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    move-object/from16 v21, v7

    const/16 v7, 0x3e8

    move-object/from16 v22, v8

    int-to-long v7, v7

    :try_start_10
    div-long v7, v11, v7

    move-wide/from16 v23, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    if-eqz v6, :cond_c

    .line 228
    :try_start_11
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    if-nez v7, :cond_b

    goto :goto_c

    :cond_b
    move-object/from16 v7, p7

    move-object/from16 v17, v0

    move-object v13, v2

    move-object/from16 v11, v21

    goto/16 :goto_1a

    :catch_5
    move-object v3, v0

    move-object v13, v2

    move-object v7, v4

    move v4, v6

    move-object v2, v10

    move-object/from16 v6, v19

    move-object/from16 v11, v21

    move-object/from16 v8, v22

    move-object/from16 v0, p7

    goto/16 :goto_17

    .line 229
    :cond_c
    :goto_c
    :try_start_12
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$0:Ljava/lang/Object;

    iput-object v2, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$1:Ljava/lang/Object;

    iput-object v4, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$2:Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_e

    move-object/from16 v3, v22

    :try_start_13
    iput-object v3, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$3:Ljava/lang/Object;

    iput-object v9, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$4:Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    move-object/from16 v7, p7

    :try_start_14
    iput-object v7, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$5:Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    move-object/from16 v12, v19

    :try_start_15
    iput-object v12, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$6:Ljava/lang/Object;

    iput-object v15, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$7:Ljava/lang/Object;

    iput-object v14, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$8:Ljava/lang/Object;

    iput-object v1, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$9:Ljava/lang/Object;

    move-object/from16 v8, v17

    iput-object v8, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$10:Ljava/lang/Object;

    move-object/from16 v11, v20

    iput-object v11, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->L$11:Ljava/lang/Object;

    iput-boolean v6, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->Z$0:Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    move-object v13, v2

    move-object/from16 v22, v3

    move-wide/from16 v2, v23

    :try_start_16
    iput-wide v2, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->J$0:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    move-object/from16 v17, v0

    const/4 v0, 0x1

    :try_start_17
    iput v0, v10, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDirectoryRecursively$1;->label:I

    move-object/from16 p1, v4

    move-object/from16 p2, v14

    move-object/from16 p3, v1

    move-object/from16 p4, v8

    move-object/from16 p5, v15

    move-object/from16 p6, v10

    invoke-virtual/range {p1 .. p6}, Lcom/sakukelly/music/domain/metadata/ArtworkLoader;->getArtworkUriOrPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_d

    return-object v1

    :cond_d
    move-wide/from16 v29, v2

    move-object/from16 v26, v8

    move-object v2, v10

    move-object/from16 v28, v11

    move-object/from16 v3, v17

    move-object/from16 v10, v19

    move-object v8, v7

    move-object v7, v4

    move-object/from16 v4, v22

    .line 197
    :goto_d
    :try_start_18
    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    .line 231
    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 232
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v15, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_9

    move-object/from16 v11, v21

    :try_start_19
    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    move-object/from16 v18, v1

    :try_start_1a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    move-object/from16 p1, v2

    :try_start_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    const/16 v31, 0x0

    goto :goto_f

    :catch_6
    move-object/from16 v18, v1

    :catch_7
    move-object/from16 p1, v2

    goto :goto_10

    :cond_f
    move-object/from16 v18, v1

    move-object/from16 p1, v2

    move-object/from16 v11, v21

    :goto_e
    const/16 v31, 0x1

    .line 234
    :goto_f
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lcom/sakukelly/music/data/model/Song;

    .line 238
    const-string v27, ""

    const/16 v36, 0x700

    const/16 v37, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v22, v0

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v10

    .line 233
    invoke-direct/range {v22 .. v37}, Lcom/sakukelly/music/data/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    move-object/from16 v10, p1

    move-object v0, v3

    move-object v2, v13

    move-object/from16 v38, v8

    move-object v8, v4

    move-object v4, v7

    move-object/from16 v7, v38

    goto/16 :goto_1b

    :catch_8
    move-object/from16 v2, p1

    goto :goto_10

    :catch_9
    move-object/from16 v18, v1

    move-object/from16 p1, v2

    move-object/from16 v11, v21

    :goto_10
    move-object v0, v8

    move-object v8, v4

    :goto_11
    move v4, v6

    move-object v6, v12

    goto/16 :goto_17

    :catch_a
    move-object/from16 v17, v0

    goto :goto_13

    :catch_b
    move-object/from16 v17, v0

    move-object v13, v2

    move-object/from16 v22, v3

    goto :goto_13

    :catch_c
    move-object/from16 v7, p7

    :catch_d
    move-object/from16 v17, v0

    move-object v13, v2

    move-object/from16 v22, v3

    goto :goto_12

    :catch_e
    move-object/from16 v7, p7

    move-object/from16 v17, v0

    move-object v13, v2

    :goto_12
    move-object/from16 v12, v19

    :catch_f
    :goto_13
    move-object/from16 v11, v21

    move-object v0, v7

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v8, v22

    goto :goto_16

    :catch_10
    move-object/from16 v17, v0

    move-object v13, v2

    move-object v11, v7

    move-object/from16 v22, v8

    move-object/from16 v12, v19

    move-object/from16 v7, p7

    goto :goto_15

    :catch_11
    move-object/from16 v17, v0

    move-object v13, v2

    goto :goto_14

    :catch_12
    move-object/from16 v17, v0

    move-object v13, v2

    move-object/from16 v18, v3

    :goto_14
    move-object/from16 v22, v8

    move-object/from16 v38, v11

    move-object v11, v7

    move-object/from16 v7, v38

    :goto_15
    move-object v0, v7

    move-object v2, v10

    move-object/from16 v3, v17

    :goto_16
    move-object v7, v4

    goto :goto_11

    .line 246
    :goto_17
    :try_start_1c
    invoke-static {v6}, Lkotlin/io/FilesKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 247
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":::artista desconocido:::180"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_10

    .line 248
    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    .line 249
    :cond_10
    invoke-interface {v13, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 251
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, ":::artista desconocido"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    goto :goto_18

    :cond_11
    const/16 v28, 0x0

    goto :goto_19

    :cond_12
    :goto_18
    const/16 v28, 0x1

    .line 253
    :goto_19
    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    new-instance v6, Lcom/sakukelly/music/data/model/Song;

    .line 255
    const-string v22, "Artista Desconocido"

    .line 256
    const-string v23, "\u00c1lbum Desconocido"

    .line 257
    const-string v24, ""

    .line 258
    const-string v25, ""

    const/16 v33, 0x700

    const/16 v34, 0x0

    const-wide/32 v26, 0x2bf20

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v19, v6

    move-object/from16 v20, v14

    move-object/from16 v21, v1

    .line 252
    invoke-direct/range {v19 .. v34}, Lcom/sakukelly/music/data/model/Song;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZILjava/lang/Float;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_13

    :cond_13
    move-object v10, v2

    move v6, v4

    move-object v4, v7

    move-object v2, v13

    move-object v7, v0

    move-object v0, v3

    goto :goto_1b

    :cond_14
    move-object/from16 v17, v0

    move-object v13, v2

    move-object/from16 v18, v3

    move-object/from16 v22, v8

    move-object/from16 v38, v11

    move-object v11, v7

    move-object/from16 v7, v38

    :goto_1a
    move-object v2, v13

    move-object/from16 v0, v17

    move-object/from16 v8, v22

    :goto_1b
    move-object/from16 v1, p0

    move-object/from16 v3, v18

    move-object/from16 v38, v11

    move-object v11, v7

    move-object/from16 v7, v38

    goto/16 :goto_1

    :catch_13
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Directory walk error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaScanner"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_15
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method static synthetic scanDirectoryRecursively$default(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object/from16 v7, p6

    :goto_1
    and-int/lit8 v0, p9, 0x40

    if-eqz v0, :cond_2

    .line 204
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v9, p8

    .line 197
    invoke-direct/range {v1 .. v9}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanDirectoryRecursively(Ljava/io/File;Ljava/util/Map;Ljava/util/Set;Lcom/sakukelly/music/domain/metadata/ArtworkLoader;ZLjava/util/Set;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final scanDirectoryRecursively$lambda$0(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner;->supportedExtensions:Ljava/util/Set;

    invoke-static {p1}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toLowerCase(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    const-wide/32 v0, 0xc350

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic scanFolder$default(Lcom/sakukelly/music/domain/scanner/MediaScanner;Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p4, 0x1

    :cond_1
    move v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    .line 175
    invoke-virtual/range {v0 .. v5}, Lcom/sakukelly/music/domain/scanner/MediaScanner;->scanFolder(Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDefaultMusicFolder()Ljava/lang/String;
    .locals 2

    .line 26
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getSupportedExtensions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/sakukelly/music/domain/scanner/MediaScanner;->supportedExtensions:Ljava/util/Set;

    return-object v0
.end method

.method public final scanDeviceAudio(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sakukelly/music/data/db/SongDao;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v7, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanDeviceAudio$2;-><init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v7, p4}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final scanFolder(Ljava/io/File;Lcom/sakukelly/music/data/db/SongDao;Landroid/content/Context;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/sakukelly/music/data/db/SongDao;",
            "Landroid/content/Context;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 175
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v8, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p3

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sakukelly/music/domain/scanner/MediaScanner$scanFolder$2;-><init>(Landroid/content/Context;Lcom/sakukelly/music/data/db/SongDao;Ljava/io/File;Lcom/sakukelly/music/domain/scanner/MediaScanner;ZLkotlin/coroutines/Continuation;)V

    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, p5}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
