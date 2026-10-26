.class Lcom/sakukelly/music/ui/PlaylistHelper$2;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper;->removeSongFromPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playlistName:Ljava/lang/String;

.field final synthetic val$songPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$playlistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$songPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    const-string v1, "DELETE FROM playlist_songs WHERE playlistName = ? AND songPath = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$playlistName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$2;->val$songPath:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$2$1;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$2$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    :goto_0
    return-void
.end method
