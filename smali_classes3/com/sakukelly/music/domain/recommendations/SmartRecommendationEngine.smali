.class public final Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;
.super Ljava/lang/Object;
.source "SmartRecommendationEngine.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartRecommendationEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartRecommendationEngine.kt\ncom/sakukelly/music/domain/recommendations/SmartRecommendationEngine\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n774#2:198\n865#2,2:199\n1557#2:201\n1628#2,3:202\n1062#2:205\n1557#2:206\n1628#2,3:207\n1485#2:210\n1510#2,3:211\n1513#2,3:221\n1062#2:231\n774#2:232\n865#2,2:233\n1557#2:236\n1628#2,3:237\n1557#2:240\n1628#2,3:241\n774#2:244\n865#2,2:245\n1557#2:247\n1628#2,3:248\n774#2:251\n865#2,2:252\n774#2:254\n865#2,2:255\n2341#2,14:257\n1557#2:271\n1628#2,3:272\n774#2:275\n865#2,2:276\n774#2:278\n865#2,2:279\n1971#2,14:281\n381#3,7:214\n535#3:224\n520#3,6:225\n1#4:235\n*S KotlinDebug\n*F\n+ 1 SmartRecommendationEngine.kt\ncom/sakukelly/music/domain/recommendations/SmartRecommendationEngine\n*L\n25#1:198\n25#1:199,2\n29#1:201\n29#1:202,3\n37#1:205\n37#1:206\n37#1:207,3\n51#1:210\n51#1:211,3\n51#1:221,3\n54#1:231\n64#1:232\n64#1:233,2\n65#1:236\n65#1:237,3\n80#1:240\n80#1:241,3\n81#1:244\n81#1:245,2\n83#1:247\n83#1:248,3\n118#1:251\n118#1:252,2\n137#1:254\n137#1:255,2\n139#1:257,14\n190#1:271\n190#1:272,3\n191#1:275\n191#1:276,2\n192#1:278\n192#1:279,2\n194#1:281,14\n51#1:214,7\n52#1:224\n52#1:225,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\nJ\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J*\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;",
        "",
        "<init>",
        "()V",
        "generateSmartRadio",
        "",
        "Lcom/sakukelly/music/data/model/Song;",
        "seedSong",
        "allSongs",
        "count",
        "",
        "generateDailyMixes",
        "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
        "getForgottenGems",
        "generateSmartShuffle",
        "songs",
        "calculateSimilarityScore",
        "",
        "a",
        "b",
        "getNextSong",
        "current",
        "queue",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final calculateSimilarityScore(Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/data/model/Song;)F
    .locals 7

    .line 159
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    add-float/2addr v0, v1

    .line 169
    :cond_1
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getGenre()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getGenre()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e4ccccd    # 0.2f

    add-float/2addr v0, v1

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const v2, 0x3dcccccd    # 0.1f

    if-lez v1, :cond_3

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_3

    .line 175
    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-float p1, v3

    div-float/2addr v1, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 180
    :cond_3
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result p1

    if-eqz p1, :cond_4

    add-float/2addr v0, v2

    .line 181
    :cond_4
    invoke-virtual {p2}, Lcom/sakukelly/music/data/model/Song;->getRating()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_5

    add-float/2addr v0, v2

    :cond_5
    return v0
.end method

.method public static synthetic generateSmartRadio$default(Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;Lcom/sakukelly/music/data/model/Song;Ljava/util/List;IILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/16 p3, 0x19

    .line 22
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->generateSmartRadio(Lcom/sakukelly/music/data/model/Song;Ljava/util/List;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final generateDailyMixes(Ljava/util/List;)Ljava/util/List;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/domain/recommendations/DailyMix;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "allSongs"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 48
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 51
    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    .line 210
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v4, Ljava/util/Map;

    .line 211
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, "toLowerCase(...)"

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 212
    move-object v8, v6

    check-cast v8, Lcom/sakukelly/music/data/model/Song;

    .line 51
    invoke-virtual {v8}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-static {v8}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 213
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v7, Ljava/util/List;

    .line 217
    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    check-cast v7, Ljava/util/List;

    .line 221
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_2
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v5, Ljava/util/Map;

    .line 225
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 52
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 227
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 53
    :cond_4
    invoke-static {v5}, Lkotlin/collections/MapsKt;->toList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    .line 231
    new-instance v5, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine$generateDailyMixes$$inlined$sortedByDescending$1;

    invoke-direct {v5}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine$generateDailyMixes$$inlined$sortedByDescending$1;-><init>()V

    check-cast v5, Ljava/util/Comparator;

    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x4

    .line 57
    new-array v6, v5, [Ljava/util/List;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Long;

    const-wide v11, 0xff7c5cffL

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-wide v13, 0xff33e0ffL

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v6, v12

    .line 58
    new-array v10, v9, [Ljava/lang/Long;

    const-wide v13, 0xffff6b6bL

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    const-wide v13, 0xffffb347L

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v6, v8

    .line 59
    new-array v10, v9, [Ljava/lang/Long;

    const-wide v13, 0xff3ddc97L

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    const-wide v13, 0xff9be15dL

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    aput-object v10, v6, v9

    .line 60
    new-array v10, v9, [Ljava/lang/Long;

    const-wide v13, 0xffff4fd8L

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v12

    const-wide v13, 0xff4facfeL

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v6, v11

    .line 56
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .line 233
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Lcom/sakukelly/music/data/model/Song;

    .line 64
    invoke-virtual {v15}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v16

    if-nez v16, :cond_6

    invoke-virtual {v15}, Lcom/sakukelly/music/data/model/Song;->getRating()I

    move-result v15

    if-lt v15, v5, :cond_5

    .line 233
    :cond_6
    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 234
    :cond_7
    check-cast v10, Ljava/util/List;

    .line 232
    check-cast v10, Ljava/util/Collection;

    .line 64
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v10, 0x14

    invoke-static {v3, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v10

    :cond_8
    check-cast v10, Ljava/util/List;

    .line 65
    move-object v13, v10

    check-cast v13, Ljava/lang/Iterable;

    .line 236
    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v14, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 237
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 238
    check-cast v13, Lcom/sakukelly/music/data/model/Song;

    .line 65
    invoke-virtual {v13}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v13

    .line 238
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 239
    :cond_9
    check-cast v14, Ljava/util/List;

    .line 236
    check-cast v14, Ljava/lang/Iterable;

    .line 65
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5, v11}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Ljava/lang/Iterable;

    const-string v5, ", "

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/CharSequence;

    const/16 v24, 0x3e

    const/16 v25, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v17 .. v25}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 67
    new-instance v14, Lcom/sakukelly/music/domain/recommendations/DailyMix;

    .line 70
    move-object/from16 v17, v13

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    if-eqz v17, :cond_a

    goto :goto_4

    :cond_a
    const-string v13, "Tus favoritas y m\u00e1s escuchadas"

    :goto_4
    move-object/from16 v20, v13

    .line 71
    invoke-virtual {v0, v10}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->generateSmartShuffle(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    .line 72
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v22, v10

    check-cast v22, Ljava/util/List;

    const/16 v18, 0x1

    .line 67
    const-string v19, "Mix Diario 1"

    move-object/from16 v17, v14

    invoke-direct/range {v17 .. v22}, Lcom/sakukelly/music/domain/recommendations/DailyMix;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 66
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    check-cast v4, Ljava/lang/Iterable;

    const/4 v10, 0x6

    invoke-static {v4, v10}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    .line 79
    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v9

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 80
    check-cast v13, Ljava/lang/Iterable;

    .line 240
    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v13, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v14, v8}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v14, Ljava/util/Collection;

    .line 241
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 242
    check-cast v13, Lkotlin/Pair;

    .line 80
    invoke-virtual {v13}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 242
    invoke-interface {v14, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 243
    :cond_b
    check-cast v14, Ljava/util/List;

    .line 244
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    check-cast v8, Ljava/util/Collection;

    .line 245
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Lcom/sakukelly/music/data/model/Song;

    .line 81
    invoke-virtual/range {v17 .. v17}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v17

    check-cast v17, Ljava/lang/CharSequence;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    sget-object v15, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v14, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 245
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_c
    const/4 v9, 0x2

    const/4 v12, 0x0

    const/16 v15, 0xa

    goto :goto_7

    .line 246
    :cond_d
    check-cast v8, Ljava/util/List;

    .line 82
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v11, :cond_10

    const/4 v9, 0x4

    if-gt v10, v9, :cond_10

    .line 83
    move-object v9, v8

    check-cast v9, Ljava/lang/Iterable;

    .line 247
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 248
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 249
    check-cast v14, Lcom/sakukelly/music/data/model/Song;

    .line 83
    invoke-virtual {v14}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v14

    .line 249
    invoke-interface {v12, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 250
    :cond_e
    check-cast v12, Ljava/util/List;

    .line 247
    check-cast v12, Ljava/lang/Iterable;

    .line 83
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Ljava/lang/Iterable;

    move-object/from16 v27, v5

    check-cast v27, Ljava/lang/CharSequence;

    const/16 v33, 0x3e

    const/16 v34, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v26 .. v34}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v9, v10, -0x1

    if-ltz v9, :cond_f

    .line 84
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_f

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    const/4 v9, 0x0

    goto :goto_9

    :cond_f
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    :goto_9
    move-object/from16 v22, v12

    check-cast v22, Ljava/util/List;

    .line 86
    new-instance v12, Lcom/sakukelly/music/domain/recommendations/DailyMix;

    .line 88
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Mix Diario "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 90
    invoke-virtual {v0, v8}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->generateSmartShuffle(Ljava/util/List;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v17, v12

    move/from16 v18, v10

    .line 86
    invoke-direct/range {v17 .. v22}, Lcom/sakukelly/music/domain/recommendations/DailyMix;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 85
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_10
    const/4 v9, 0x0

    const/16 v13, 0xa

    :goto_a
    move v12, v9

    move v15, v13

    const/4 v8, 0x1

    const/4 v9, 0x2

    goto/16 :goto_5

    .line 99
    :cond_11
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_12

    .line 101
    new-instance v1, Lcom/sakukelly/music/domain/recommendations/DailyMix;

    .line 105
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    const/16 v4, 0xf

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v11

    const/4 v3, 0x1

    .line 106
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    const/4 v8, 0x2

    .line 101
    const-string v9, "Mix Descubrimiento"

    const-string v10, "Joyas de tu biblioteca"

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/sakukelly/music/domain/recommendations/DailyMix;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 100
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-object v2
.end method

.method public final generateSmartRadio(Lcom/sakukelly/music/data/model/Song;Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "seedSong"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allSongs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 199
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    .line 25
    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 199
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 200
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 29
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    .line 201
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p2, Ljava/util/Collection;

    .line 202
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 203
    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    .line 30
    invoke-direct {p0, p1, v2}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->calculateSimilarityScore(Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/data/model/Song;)F

    move-result v3

    .line 32
    sget-object v4, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v4}, Lkotlin/random/Random$Default;->nextFloat()F

    move-result v4

    const v5, 0x3e19999a    # 0.15f

    mul-float/2addr v4, v5

    .line 33
    new-instance v5, Lkotlin/Pair;

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v5, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 204
    :cond_4
    check-cast p2, Ljava/util/List;

    .line 37
    check-cast p2, Ljava/lang/Iterable;

    .line 205
    new-instance v0, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine$generateSmartRadio$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine$generateSmartRadio$$inlined$sortedByDescending$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 207
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 208
    check-cast v1, Lkotlin/Pair;

    .line 37
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    .line 208
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 209
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 39
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    check-cast v0, Ljava/lang/Iterable;

    add-int/lit8 p3, p3, -0x1

    invoke-static {v0, p3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final generateSmartShuffle(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "songs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 128
    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    move-object v2, v1

    .line 132
    :goto_0
    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    if-nez v2, :cond_1

    .line 134
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v2, Lkotlin/random/Random;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    goto/16 :goto_3

    .line 137
    :cond_1
    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    .line 254
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 255
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/sakukelly/music/data/model/Song;

    .line 137
    invoke-virtual {v7}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getArtist()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 255
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    :cond_3
    check-cast v5, Ljava/util/List;

    .line 138
    move-object v4, v5

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_9

    .line 139
    check-cast v5, Ljava/lang/Iterable;

    .line 257
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 258
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    move-object v3, v1

    goto :goto_2

    .line 259
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 260
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_2

    .line 261
    :cond_5
    move-object v6, v3

    check-cast v6, Lcom/sakukelly/music/data/model/Song;

    .line 139
    invoke-virtual {v6}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 263
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 264
    move-object v9, v8

    check-cast v9, Lcom/sakukelly/music/data/model/Song;

    .line 139
    invoke-virtual {v9}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    cmp-long v11, v6, v9

    if-lez v11, :cond_7

    move-object v3, v8

    move-wide v6, v9

    .line 269
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_6

    .line 139
    :goto_2
    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    if-nez v3, :cond_8

    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v2, Lkotlin/random/Random;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    goto :goto_3

    :cond_8
    move-object v2, v3

    goto :goto_3

    .line 141
    :cond_9
    sget-object v2, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast v2, Lkotlin/random/Random;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    .line 144
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public final getForgottenGems(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;"
        }
    .end annotation

    const-string v0, "allSongs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    check-cast p1, Ljava/lang/Iterable;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 252
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sakukelly/music/data/model/Song;

    .line 118
    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->isFavorite()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sakukelly/music/data/model/Song;->getDuration()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 252
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 251
    check-cast v0, Ljava/lang/Iterable;

    .line 118
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->shuffled(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const/16 v0, 0xf

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getNextSong(Lcom/sakukelly/music/data/model/Song;Ljava/util/List;Ljava/util/List;)Lcom/sakukelly/music/data/model/Song;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/model/Song;",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sakukelly/music/data/model/Song;",
            ">;)",
            "Lcom/sakukelly/music/data/model/Song;"
        }
    .end annotation

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allSongs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    check-cast p3, Ljava/lang/Iterable;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p3, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 272
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 273
    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    .line 190
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 274
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 271
    check-cast v0, Ljava/lang/Iterable;

    .line 190
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p3

    .line 191
    check-cast p2, Ljava/lang/Iterable;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 276
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    .line 191
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 276
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 192
    move-object p3, v0

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_3

    goto :goto_3

    .line 278
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/Collection;

    .line 279
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    .line 192
    invoke-virtual {v1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 279
    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 280
    :cond_5
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    .line 193
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-object p1

    .line 194
    :cond_6
    move-object p2, v0

    check-cast p2, Ljava/lang/Iterable;

    .line 281
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 282
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_7

    const/4 p1, 0x0

    goto :goto_5

    .line 283
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 284
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    :goto_4
    move-object p1, p3

    goto :goto_5

    .line 285
    :cond_8
    move-object v1, p3

    check-cast v1, Lcom/sakukelly/music/data/model/Song;

    .line 194
    invoke-direct {p0, p1, v1}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->calculateSimilarityScore(Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/data/model/Song;)F

    move-result v1

    .line 287
    :cond_9
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 288
    move-object v3, v2

    check-cast v3, Lcom/sakukelly/music/data/model/Song;

    .line 194
    invoke-direct {p0, p1, v3}, Lcom/sakukelly/music/domain/recommendations/SmartRecommendationEngine;->calculateSimilarityScore(Lcom/sakukelly/music/data/model/Song;Lcom/sakukelly/music/data/model/Song;)F

    move-result v3

    .line 289
    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-gez v4, :cond_a

    move-object p3, v2

    move v1, v3

    .line 293
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_4

    .line 194
    :goto_5
    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    if-nez p1, :cond_b

    check-cast v0, Ljava/util/Collection;

    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    check-cast p1, Lkotlin/random/Random;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->random(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sakukelly/music/data/model/Song;

    :cond_b
    return-object p1
.end method
