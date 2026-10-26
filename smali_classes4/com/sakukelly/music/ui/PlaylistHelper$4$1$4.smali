.class Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;

# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

# instance fields
.field final synthetic this$1:Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$4$1;Landroidx/appcompat/app/AlertDialog;)V
    .locals 0
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->val$dialog:Landroidx/appcompat/app/AlertDialog;
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;
    iget-object v0, v0, Lcom/sakukelly/music/ui/PlaylistHelper$4;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
    iget-object v1, v1, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;
    iget-object v1, v1, Lcom/sakukelly/music/ui/PlaylistHelper$4;->val$playlistName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->this$1:Lcom/sakukelly/music/ui/PlaylistHelper$4$1;
    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$4$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$4;
    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$4;->val$libVm:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-static {v0, v1, v2}, Lcom/sakukelly/music/ui/PlaylistHelper;->confirmDeletePlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V

    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$4$1$4;->val$dialog:Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V
    return-void
.end method
