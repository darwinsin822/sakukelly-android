.class Lcom/sakukelly/music/ui/PlaylistHelper$7;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper;->confirmDeletePlaylist(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$libVm:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

.field final synthetic val$playlistName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$playlistName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$7;->val$libVm:Lcom/sakukelly/music/ui/viewmodel/LibraryViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 345
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;

    invoke-direct {p2, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$7$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$7;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 367
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 368
    return-void
.end method
