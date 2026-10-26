.class Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;

.field final synthetic val$song:Lcom/sakukelly/music/data/model/Song;

.field final synthetic val$which:I


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;ILcom/sakukelly/music/data/model/Song;)V
    .locals 0

    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;

    iput p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->val$which:I

    iput-object p3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->val$song:Lcom/sakukelly/music/data/model/Song;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    # Option 0: Reproducir desde aquí
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$playerVm:Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;
    iget v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->val$which:I
    invoke-virtual {p1, p2, v0}, Lcom/sakukelly/music/ui/viewmodel/PlayerViewModel;->playQueue(Ljava/util/List;I)V
    goto :goto_0

    :cond_0
    :try_start_0
    sget-object p1, Lcom/sakukelly/music/player/PlayerController;->Companion:Lcom/sakukelly/music/player/PlayerController$Companion;
    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;
    invoke-virtual {p1, p2}, Lcom/sakukelly/music/player/PlayerController$Companion;->getInstance(Landroid/content/Context;)Lcom/sakukelly/music/player/PlayerController;
    move-result-object p1

    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->val$songs:Ljava/util/List;
    iget v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->val$which:I
    invoke-virtual {p1, p2, v0}, Lcom/sakukelly/music/player/PlayerController;->playQueue(Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1
    goto :goto_0

    # Option 1: Quitar de la lista
    :cond_1
    const/4 p1, 0x1
    if-ne p2, p1, :cond_2

    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;
    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->this$2:Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;
    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$playlistName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$3$1;->val$song:Lcom/sakukelly/music/data/model/Song;
    invoke-virtual {v0}, Lcom/sakukelly/music/data/model/Song;->getPath()Ljava/lang/String;
    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->removeSongFromPlaylist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
