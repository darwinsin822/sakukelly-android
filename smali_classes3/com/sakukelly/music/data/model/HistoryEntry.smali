.class public final Lcom/sakukelly/music/data/model/HistoryEntry;
.super Ljava/lang/Object;
.source "HistoryEntry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c7\u0001J\u0013\u0010\u0019\u001a\u00020\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d7\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d7\u0001J\t\u0010\u001d\u001a\u00020\u0005H\u00d7\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sakukelly/music/data/model/HistoryEntry;",
        "",
        "id",
        "",
        "path",
        "",
        "playedAt",
        "completed",
        "",
        "isStream",
        "<init>",
        "(JLjava/lang/String;JZZ)V",
        "getId",
        "()J",
        "getPath",
        "()Ljava/lang/String;",
        "getPlayedAt",
        "getCompleted",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final completed:Z

.field private final id:J

.field private final isStream:Z

.field private final path:Ljava/lang/String;

.field private final playedAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZZ)V
    .locals 1

    const-string v0, "path"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    .line 10
    iput-object p3, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    .line 11
    iput-wide p4, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    .line 12
    iput-boolean p6, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    .line 13
    iput-boolean p7, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;JZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    move-object v2, p0

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    .line 7
    invoke-direct/range {v2 .. v9}, Lcom/sakukelly/music/data/model/HistoryEntry;-><init>(JLjava/lang/String;JZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sakukelly/music/data/model/HistoryEntry;JLjava/lang/String;JZZILjava/lang/Object;)Lcom/sakukelly/music/data/model/HistoryEntry;
    .locals 8

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    goto :goto_3

    :cond_3
    move v6, p6

    :goto_3
    and-int/lit8 v7, p8, 0x10

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    goto :goto_4

    :cond_4
    move v7, p7

    :goto_4
    move-wide p1, v1

    move-object p3, v3

    move-wide p4, v4

    move p6, v6

    move p7, v7

    invoke-virtual/range {p0 .. p7}, Lcom/sakukelly/music/data/model/HistoryEntry;->copy(JLjava/lang/String;JZZ)Lcom/sakukelly/music/data/model/HistoryEntry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    return v0
.end method

.method public final copy(JLjava/lang/String;JZZ)Lcom/sakukelly/music/data/model/HistoryEntry;
    .locals 9

    const-string v0, "path"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sakukelly/music/data/model/HistoryEntry;

    move-object v1, v0

    move-wide v2, p1

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/sakukelly/music/data/model/HistoryEntry;-><init>(JLjava/lang/String;JZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sakukelly/music/data/model/HistoryEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sakukelly/music/data/model/HistoryEntry;

    iget-wide v3, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    iget-wide v5, p1, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    iget-object v3, p1, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    iget-wide v5, p1, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    iget-boolean v3, p1, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    iget-boolean p1, p1, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCompleted()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    return v0
.end method

.method public final getId()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlayedAt()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isStream()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    iget-wide v0, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->id:J

    iget-object v2, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->path:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->playedAt:J

    iget-boolean v5, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->completed:Z

    iget-boolean v6, p0, Lcom/sakukelly/music/data/model/HistoryEntry;->isStream:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "HistoryEntry(id="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
