.class Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$6$1;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 327
    iget-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object p1, p1, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$6$1$2;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$6$1;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$6;

    iget-object p2, p2, Lcom/sakukelly/music/ui/PlaylistHelper$6;->val$playlistName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/sakukelly/music/ui/PlaylistHelper;->showAddSongsDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 328
    return-void
.end method
