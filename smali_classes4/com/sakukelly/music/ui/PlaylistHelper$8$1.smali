.class Lcom/sakukelly/music/ui/PlaylistHelper$8$1;
.super Ljava/lang/Object;
.source "PlaylistHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sakukelly/music/ui/PlaylistHelper$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

.field final synthetic val$playlists:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/sakukelly/music/ui/PlaylistHelper$8;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iput-object p2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->val$playlists:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 383
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->val$playlists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iget-object v2, v2, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 385
    const-string v2, "Listas de Reproducci\u00f3n"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 386
    const-string v2, "A\u00fan no has creado ninguna lista de reproducci\u00f3n.\n\nCrea una lista en la pantalla principal tocando el icono de lista en la barra superior."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 387
    const-string v2, "Entendido"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 388
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    .line 389
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->val$playlists:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 393
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iget-object v3, v3, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/sakukelly/music/ui/PlaylistHelper$8$1;->this$0:Lcom/sakukelly/music/ui/PlaylistHelper$8;

    iget-object v3, v3, Lcom/sakukelly/music/ui/PlaylistHelper$8;->val$song:Lcom/sakukelly/music/data/model/Song;

    .line 394
    invoke-virtual {v3}, Lcom/sakukelly/music/data/model/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A\u00f1adir \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' a:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;

    invoke-direct {v3, p0}, Lcom/sakukelly/music/ui/PlaylistHelper$8$1$1;-><init>(Lcom/sakukelly/music/ui/PlaylistHelper$8$1;)V

    .line 395
    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 402
    const-string v2, "Cancelar"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/sakukelly/music/ui/PlaylistHelper;->styleLiquidDialog(Landroid/app/Dialog;)V

    .line 404
    return-void
.end method
