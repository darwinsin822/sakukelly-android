.class public Lorg/jaudiotagger/tag/id3/ID3v11Tag;
.super Lorg/jaudiotagger/tag/id3/ID3v1Tag;
.source "ID3v11Tag.java"


# static fields
.field protected static final FIELD_COMMENT_LENGTH:I = 0x1c

.field protected static final FIELD_COMMENT_POS:I = 0x61

.field protected static final FIELD_TRACK_INDICATOR_LENGTH:I = 0x1

.field protected static final FIELD_TRACK_INDICATOR_POS:I = 0x7d

.field protected static final FIELD_TRACK_LENGTH:I = 0x1

.field protected static final FIELD_TRACK_POS:I = 0x7e

.field private static final MAJOR_VERSION:B = 0x1t

.field private static final RELEASE:B = 0x1t

.field private static final REVISION:B = 0x0t

.field protected static final TRACK_MAX_VALUE:I = 0xff

.field protected static final TRACK_MIN_VALUE:I = 0x1

.field protected static final TRACK_UNDEFINED:I = 0x0

.field protected static final TYPE_TRACK:Ljava/lang/String; = "track"


# instance fields
.field protected track:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;-><init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 241
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->setLoggingFilename(Ljava/lang/String;)V

    const/16 p2, 0x80

    .line 243
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 244
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 248
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 251
    invoke-virtual {v0, p2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 252
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 253
    invoke-virtual {p0, p2}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->read(Ljava/nio/ByteBuffer;)V

    return-void

    .line 246
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File not large enough to contain a tag"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V
    .locals 6

    .line 129
    invoke-direct {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-eqz p1, :cond_b

    .line 132
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    if-eqz v1, :cond_1

    .line 134
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    if-nez v0, :cond_0

    .line 139
    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;

    .line 140
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->title:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->artist:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->album:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->year:Ljava/lang/String;

    iput-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 145
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->genre:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    goto/16 :goto_3

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Copy Constructor not called. Please type cast the argument"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_1
    instance-of v1, p1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    if-nez v1, :cond_2

    .line 153
    new-instance v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    invoke-direct {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;-><init>(Lorg/jaudiotagger/tag/id3/AbstractTag;)V

    goto :goto_0

    .line 157
    :cond_2
    move-object v1, p1

    check-cast v1, Lorg/jaudiotagger/tag/id3/ID3v24Tag;

    .line 161
    :goto_0
    const-string p1, "TIT2"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x1e

    if-eqz v2, :cond_3

    .line 163
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 165
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTIT2;->getText()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {p1, v3}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 168
    :cond_3
    const-string p1, "TPE1"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 172
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTPE1;->getText()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1, v3}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 175
    :cond_4
    const-string p1, "TALB"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 179
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTALB;->getText()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-static {p1, v3}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 182
    :cond_5
    const-string p1, "TDRC"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 184
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 186
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTDRC;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x4

    .line 187
    invoke-static {p1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 190
    :cond_6
    const-string p1, "COMM"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 192
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrameOfType(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    .line 193
    const-string v2, ""

    .line 194
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 196
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 197
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object v3

    check-cast v3, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;

    invoke-virtual {v3}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyCOMM;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/16 p1, 0x1c

    .line 199
    invoke-static {v2, p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 201
    :cond_8
    const-string p1, "TCON"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 203
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 205
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTCON;->getText()Ljava/lang/String;

    move-result-object p1

    .line 208
    :try_start_0
    invoke-static {p1}, Lorg/jaudiotagger/tag/id3/ID3Tags;->findNumber(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-byte v2, v2

    iput-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B
    :try_end_0
    .catch Lorg/jaudiotagger/tag/TagException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 212
    invoke-static {}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getInstanceOf()Lorg/jaudiotagger/tag/reference/GenreTypes;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/jaudiotagger/tag/reference/GenreTypes;->getIdForValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 213
    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    goto :goto_2

    .line 216
    :cond_9
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getLoggingFilename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Unable to convert TCON frame to format suitable for v11 tag"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 217
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    .line 221
    :cond_a
    :goto_2
    const-string p1, "TRCK"

    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->hasFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 223
    invoke-virtual {v1, p1}, Lorg/jaudiotagger/tag/id3/ID3v24Tag;->getFrame(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 224
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/ID3v24Frame;

    .line 225
    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/ID3v24Frame;->getBody()Lorg/jaudiotagger/tag/id3/AbstractTagFrameBody;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/id3/framebody/FrameBodyTRCK;->getTrackNo()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    :cond_b
    :goto_3
    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/tag/id3/ID3v11Tag;)V
    .locals 1

    .line 118
    invoke-direct {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;-><init>(Lorg/jaudiotagger/tag/id3/ID3v1Tag;)V

    const/4 v0, 0x0

    .line 73
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    .line 119
    iget-byte p1, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    return-void
.end method


# virtual methods
.method public addTrack(Ljava/lang/String;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    return-void
.end method

.method public createStructure()V
    .locals 4

    .line 628
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->openHeadingElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "title"

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "artist"

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "album"

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "year"

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "comment"

    iget-object v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "track"

    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 636
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    const-string v1, "genre"

    iget-byte v3, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    invoke-virtual {v0, v1, v3}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->addElement(Ljava/lang/String;I)V

    .line 637
    invoke-static {}, Lorg/jaudiotagger/audio/mp3/MP3File;->getStructureFormatter()Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/jaudiotagger/logging/AbstractTagDisplayFormatter;->closeHeadingElement(Ljava/lang/String;)V

    return-void
.end method

.method public deleteField(Lorg/jaudiotagger/tag/FieldKey;)V
    .locals 1

    .line 444
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 446
    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    goto :goto_0

    .line 450
    :cond_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->deleteField(Lorg/jaudiotagger/tag/FieldKey;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 463
    instance-of v0, p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 467
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;

    .line 468
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    iget-byte v0, v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-ne v2, v0, :cond_1

    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getFieldCount()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jaudiotagger/tag/FieldKey;",
            ")",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 370
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne p1, v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 376
    :cond_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFields(Lorg/jaudiotagger/tag/FieldKey;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;
    .locals 1

    .line 382
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag$1;->$SwitchMap$org$jaudiotagger$tag$FieldKey:[I

    invoke-virtual {p1}, Lorg/jaudiotagger/tag/FieldKey;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 406
    const-string p1, ""

    return-object p1

    .line 403
    :pswitch_0
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstComment()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 400
    :pswitch_1
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstTrack()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 397
    :pswitch_2
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstYear()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 394
    :pswitch_3
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstGenre()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 391
    :pswitch_4
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstTitle()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 388
    :pswitch_5
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstAlbum()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :pswitch_6
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirstArtist()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFirstComment()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;
    .locals 1

    .line 414
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {v0}, Lorg/jaudiotagger/tag/FieldKey;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getTrack()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 419
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 421
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jaudiotagger/tag/TagField;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_1
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->getFirstField(Ljava/lang/String;)Lorg/jaudiotagger/tag/TagField;

    move-result-object p1

    return-object p1
.end method

.method public getFirstTrack()Ljava/lang/String;
    .locals 1

    .line 334
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMajorVersion()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRelease()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getRevision()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTrack()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jaudiotagger/tag/TagField;",
            ">;"
        }
    .end annotation

    .line 344
    sget-object v0, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 346
    new-instance v0, Lorg/jaudiotagger/tag/id3/ID3v1TagField;

    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->TRACK:Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/id3/ID3v1FieldKey;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    invoke-virtual {p0, v2}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->getFirst(Lorg/jaudiotagger/tag/FieldKey;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jaudiotagger/tag/id3/ID3v1TagField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0, v0}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->returnFieldToList(Lorg/jaudiotagger/tag/id3/ID3v1TagField;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 351
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 434
    iget-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    if-gtz v0, :cond_0

    invoke-super {p0}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jaudiotagger/tag/TagNotFoundException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->seek(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 512
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Reading v1.1 tag"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 515
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 516
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 517
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 518
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v4, 0x1e

    invoke-direct {p1, v1, v0, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 519
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    .line 524
    :cond_0
    new-instance p1, Ljava/lang/String;

    const/16 v0, 0x21

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 525
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    .line 530
    :cond_1
    new-instance p1, Ljava/lang/String;

    const/16 v0, 0x3f

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v0, v4, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 531
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 532
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 534
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    .line 536
    :cond_2
    new-instance p1, Ljava/lang/String;

    const/4 v0, 0x4

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v4, 0x5d

    invoke-direct {p1, v1, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 537
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 538
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    .line 542
    :cond_3
    new-instance p1, Ljava/lang/String;

    const/16 v0, 0x1c

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/16 v4, 0x61

    invoke-direct {p1, v1, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    .line 543
    sget-object p1, Lorg/jaudiotagger/tag/id3/AbstractID3v1Tag;->endofStringPattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 546
    iget-object v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    :cond_4
    const/16 p1, 0x7e

    .line 548
    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    const/16 p1, 0x7f

    .line 549
    aget-byte p1, v1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    return-void

    .line 510
    :cond_5
    new-instance p1, Lorg/jaudiotagger/tag/TagNotFoundException;

    const-string v0, "ID3v1 tag not found"

    invoke-direct {p1, v0}, Lorg/jaudiotagger/tag/TagNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public seek(Ljava/nio/ByteBuffer;)Z
    .locals 3

    const/4 v0, 0x3

    .line 480
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 483
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->TAG_ID:[B

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x7d

    .line 489
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 490
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 497
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x1c

    .line 282
    invoke-static {p1, v0}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    return-void

    .line 280
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object v0, Lorg/jaudiotagger/logging/ErrorMessage;->GENERAL_INVALID_NULL_ARGUMENT:Lorg/jaudiotagger/logging/ErrorMessage;

    invoke-virtual {v0}, Lorg/jaudiotagger/logging/ErrorMessage;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setField(Lorg/jaudiotagger/tag/TagField;)V
    .locals 2

    .line 357
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jaudiotagger/tag/FieldKey;->valueOf(Ljava/lang/String;)Lorg/jaudiotagger/tag/FieldKey;

    move-result-object v0

    .line 358
    sget-object v1, Lorg/jaudiotagger/tag/FieldKey;->TRACK:Lorg/jaudiotagger/tag/FieldKey;

    if-ne v0, v1, :cond_0

    .line 360
    invoke-interface {p1}, Lorg/jaudiotagger/tag/TagField;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->setTrack(Ljava/lang/String;)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-super {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v1Tag;->setField(Lorg/jaudiotagger/tag/TagField;)V

    :goto_0
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-gt v1, v2, :cond_1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    iput-byte p1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    goto :goto_2

    .line 318
    :cond_1
    :goto_1
    iput-byte v0, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    :goto_2
    return-void
.end method

.method public write(Ljava/io/RandomAccessFile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 561
    sget-object v0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v1, "Saving ID3v11 tag to file"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    const/16 v0, 0x80

    .line 562
    new-array v0, v0, [B

    .line 565
    invoke-virtual {p0, p1}, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->delete(Ljava/io/RandomAccessFile;)V

    .line 566
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 567
    sget-object v1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->TAG_ID:[B

    sget-object v2, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->TAG_ID:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveTitle()Z

    move-result v1

    const/16 v2, 0x1e

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    .line 572
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x3

    .line 574
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    :cond_0
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveArtist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->artist:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v4, v3

    .line 581
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x21

    .line 583
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 587
    :cond_1
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveAlbum()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 589
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->album:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 590
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    add-int/lit8 v4, v2, 0x3f

    .line 592
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 596
    :cond_2
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveYear()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 598
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->year:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move v2, v3

    .line 599
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v2, 0x5d

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 605
    :cond_3
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveComment()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 607
    iget-object v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->comment:Ljava/lang/String;

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lorg/jaudiotagger/tag/id3/ID3Tags;->truncate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 608
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_4

    add-int/lit8 v2, v3, 0x61

    .line 610
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    const/16 v1, 0x7e

    .line 614
    iget-byte v2, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->track:B

    aput-byte v2, v0, v1

    .line 616
    invoke-static {}, Lorg/jaudiotagger/tag/TagOptionSingleton;->getInstance()Lorg/jaudiotagger/tag/TagOptionSingleton;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jaudiotagger/tag/TagOptionSingleton;->isId3v1SaveGenre()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 618
    iget-byte v1, p0, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->genre:B

    const/16 v2, 0x7f

    aput-byte v1, v0, v2

    .line 620
    :cond_5
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 622
    sget-object p1, Lorg/jaudiotagger/tag/id3/ID3v11Tag;->logger:Ljava/util/logging/Logger;

    const-string v0, "Saved ID3v11 tag to file"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    return-void
.end method
