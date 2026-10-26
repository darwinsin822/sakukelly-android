.class public final synthetic Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/sakukelly/music/data/db/StatsDao_Impl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;JJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/data/db/StatsDao_Impl;

    iput-object p2, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$2:J

    iput-wide p5, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$3:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 0
    iget-object v0, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$0:Lcom/sakukelly/music/data/db/StatsDao_Impl;

    iget-object v1, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$2:J

    iget-wide v4, p0, Lcom/sakukelly/music/data/db/StatsDao_Impl$$ExternalSyntheticLambda0;->f$3:J

    move-object v6, p1

    check-cast v6, Lkotlin/coroutines/Continuation;

    invoke-static/range {v0 .. v6}, Lcom/sakukelly/music/data/db/StatsDao_Impl;->$r8$lambda$pz8O8MLvUj3todow7KqJJwJgHdc(Lcom/sakukelly/music/data/db/StatsDao_Impl;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
