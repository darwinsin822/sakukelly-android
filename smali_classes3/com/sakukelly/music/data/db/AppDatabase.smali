.class public abstract Lcom/sakukelly/music/data/db/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sakukelly/music/data/db/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\rH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0008\u0010\u0010\u001a\u00020\u0011H&\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sakukelly/music/data/db/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "songDao",
        "Lcom/sakukelly/music/data/db/SongDao;",
        "streamDao",
        "Lcom/sakukelly/music/data/db/StreamDao;",
        "playlistDao",
        "Lcom/sakukelly/music/data/db/PlaylistDao;",
        "historyDao",
        "Lcom/sakukelly/music/data/db/HistoryDao;",
        "statsDao",
        "Lcom/sakukelly/music/data/db/StatsDao;",
        "scrobbleDao",
        "Lcom/sakukelly/music/data/db/ScrobbleDao;",
        "downloadDao",
        "Lcom/sakukelly/music/data/db/DownloadDao;",
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

.field public static final Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

.field private static volatile INSTANCE:Lcom/sakukelly/music/data/db/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sakukelly/music/data/db/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->Companion:Lcom/sakukelly/music/data/db/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/sakukelly/music/data/db/AppDatabase;
    .locals 1

    .line 9
    sget-object v0, Lcom/sakukelly/music/data/db/AppDatabase;->INSTANCE:Lcom/sakukelly/music/data/db/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/sakukelly/music/data/db/AppDatabase;)V
    .locals 0

    .line 9
    sput-object p0, Lcom/sakukelly/music/data/db/AppDatabase;->INSTANCE:Lcom/sakukelly/music/data/db/AppDatabase;

    return-void
.end method


# virtual methods
.method public abstract downloadDao()Lcom/sakukelly/music/data/db/DownloadDao;
.end method

.method public abstract historyDao()Lcom/sakukelly/music/data/db/HistoryDao;
.end method

.method public abstract playlistDao()Lcom/sakukelly/music/data/db/PlaylistDao;
.end method

.method public abstract scrobbleDao()Lcom/sakukelly/music/data/db/ScrobbleDao;
.end method

.method public abstract songDao()Lcom/sakukelly/music/data/db/SongDao;
.end method

.method public abstract statsDao()Lcom/sakukelly/music/data/db/StatsDao;
.end method

.method public abstract streamDao()Lcom/sakukelly/music/data/db/StreamDao;
.end method
