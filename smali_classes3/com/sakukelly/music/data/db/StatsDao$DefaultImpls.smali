.class public final Lcom/sakukelly/music/data/db/StatsDao$DefaultImpls;
.super Ljava/lang/Object;
.source "StatsDao.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sakukelly/music/data/db/StatsDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static recordPlay(Lcom/sakukelly/music/data/db/StatsDao;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/db/StatsDao;",
            "Ljava/lang/String;",
            "JJ",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    instance-of v3, v2, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;

    iget v4, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;

    invoke-direct {v3, v2}, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 18
    iget v5, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-wide v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->J$1:J

    iget-wide v8, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->J$0:J

    iget-object v5, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v10, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lcom/sakukelly/music/data/db/StatsDao;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide/from16 v17, v0

    move-object v12, v5

    move-wide v15, v8

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$1:Ljava/lang/Object;

    move-wide/from16 v9, p2

    iput-wide v9, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->J$0:J

    move-wide/from16 v11, p4

    iput-wide v11, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->J$1:J

    iput v8, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    invoke-interface {v0, v1, v3}, Lcom/sakukelly/music/data/db/StatsDao;->getStats(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-wide v15, v9

    move-wide/from16 v17, v11

    move-object v10, v0

    move-object v12, v1

    .line 18
    :goto_1
    check-cast v2, Lcom/sakukelly/music/data/model/PlayStats;

    const/4 v0, 0x0

    if-nez v2, :cond_7

    .line 22
    new-instance v1, Lcom/sakukelly/music/data/model/PlayStats;

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v11, v1

    invoke-direct/range {v11 .. v20}, Lcom/sakukelly/music/data/model/PlayStats;-><init>(Ljava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    invoke-interface {v10, v1, v3}, Lcom/sakukelly/music/data/db/StatsDao;->insertStats(Lcom/sakukelly/music/data/model/PlayStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_6

    return-object v4

    .line 26
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 24
    :cond_7
    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/sakukelly/music/data/db/StatsDao$recordPlay$1;->label:I

    move-object/from16 p0, v10

    move-object/from16 p1, v12

    move-wide/from16 p2, v15

    move-wide/from16 p4, v17

    move-object/from16 p6, v3

    invoke-interface/range {p0 .. p6}, Lcom/sakukelly/music/data/db/StatsDao;->updateStatsPlay(Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    return-object v4

    .line 26
    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static recordSkip(Lcom/sakukelly/music/data/db/StatsDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sakukelly/music/data/db/StatsDao;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;

    iget v4, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;

    invoke-direct {v3, v2}, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 31
    iget v5, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/sakukelly/music/data/db/StatsDao;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v9, v0

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iput-object v0, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$1:Ljava/lang/Object;

    iput v8, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    invoke-interface {v0, v1, v3}, Lcom/sakukelly/music/data/db/StatsDao;->getStats(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v9, v1

    .line 31
    :goto_1
    check-cast v2, Lcom/sakukelly/music/data/model/PlayStats;

    const/4 v1, 0x0

    if-nez v2, :cond_7

    .line 35
    new-instance v2, Lcom/sakukelly/music/data/model/PlayStats;

    const/16 v16, 0x1a

    const/16 v17, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v17}, Lcom/sakukelly/music/data/model/PlayStats;-><init>(Ljava/lang/String;IIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    invoke-interface {v0, v2, v3}, Lcom/sakukelly/music/data/db/StatsDao;->insertStats(Lcom/sakukelly/music/data/model/PlayStats;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_6

    return-object v4

    .line 39
    :cond_6
    :goto_2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 37
    :cond_7
    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/sakukelly/music/data/db/StatsDao$recordSkip$1;->label:I

    invoke-interface {v0, v9, v3}, Lcom/sakukelly/music/data/db/StatsDao;->updateStatsSkip(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    return-object v4

    .line 39
    :cond_8
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
