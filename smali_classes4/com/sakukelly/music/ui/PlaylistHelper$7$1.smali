.class Lcom/sakukelly/music/ui/PlaylistHelper$7$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$7;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 349
    :try_start_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->getWritableDb(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 351
    const-string v1, "DELETE FROM playlist_songs WHERE playlistName = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v4, v4, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$playlistName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {v0, v1, v3}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    const-string v1, "DELETE FROM playlists WHERE name = ?"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v3, v3, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$playlistName:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$libVm:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$libVm:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    iget-object v1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$7;

    iget-object v1, v1, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$playlistName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;->deletePlaylist(Ljava/lang/String;)V

    .line 357
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sakukelly/music/ui/PlaylistHelper$7$1$1;

    invoke-direct {v1, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$7$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$7$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    :goto_0
    return-void
.end method
